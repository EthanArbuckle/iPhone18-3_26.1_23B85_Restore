@interface MADPhotosDatabaseMigrationProcessingTask
+ (id)taskWithPhotoLibraries:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (BOOL)isCancelled;
- (MADPhotosDatabaseMigrationProcessingTask)initWithPhotoLibraries:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (id)_analyticsForPhotoLibrary:(id)a3;
- (id)_mocForPhotoLibrary:(id)a3;
- (int)_bumpImageEmbeddingVersionWithAssetBatch:(id)a3 fromImageEmbeddingVersion:(int)a4 fromUnifiedEmbeddingVersion:(unint64_t)a5 toImageEmbeddingVersion:(int)a6 toUnifiedEmbeddingVersion:(unint64_t)a7 photoLibrary:(id)a8;
- (int)_bumpVectorDatabaseVersionWithLocalIdentifiers:(id)a3 embeddingType:(unint64_t)a4 fromUnifiedEmbeddingVersion:(unint64_t)a5 toUnifiedEmbeddingVersion:(unint64_t)a6 updatedLocalIdentifiers:(id)a7 photoLibrary:(id)a8;
- (int)_bumpVideoEmbeddingVersionWithAssetBatch:(id)a3 fromVideoEmbeddingVersion:(int)a4 fromUnifiedEmbeddingVersion:(unint64_t)a5 toVideoEmbeddingVersion:(int)a6 toUnifiedEmbeddingVersion:(unint64_t)a7 photoLibrary:(id)a8;
- (int)_migrateAssetsAndResultsForPhotoLibrary:(id)a3;
- (int)_migrateChangeTokensForLibrary:(id)a3;
- (int)_migrateDatabaseForPhotoLibrary:(id)a3;
- (int)_migrateDatabaseToV1ForPhotoLibrary:(id)a3;
- (int)_migrateDatabaseToV2ForPhotoLibrary:(id)a3;
- (int)_migrateKeyValueStoreForLibrary:(id)a3;
- (int)_migrateMomentsScheduledAssetForLibrary:(id)a3;
- (int)_migrateProcessingStatusForLibrary:(id)a3;
- (int)_migrateProgressHistoryForLibrary:(id)a3;
- (int)_run;
- (int)_saveBatch:(id)a3 entityName:(id)a4 photoLibrary:(id)a5;
- (int)_updateAnalysisMetricsForPhotoLibrary:(id)a3;
- (int)run;
- (void)_accumulateOverallField:(id)a3 value:(unint64_t)a4;
- (void)_accumulateOverallInserted:(unint64_t)a3;
- (void)_accumulateOverallRetrieved:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MADPhotosDatabaseMigrationProcessingTask

- (MADPhotosDatabaseMigrationProcessingTask)initWithPhotoLibraries:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v45.receiver = self;
  v45.super_class = MADPhotosDatabaseMigrationProcessingTask;
  v11 = [(MADPhotosDatabaseMigrationProcessingTask *)&v45 init];
  if (v11)
  {
    v12 = objc_retainBlock(v38);
    progressHandler = v11->_progressHandler;
    v11->_progressHandler = v12;

    if (v39)
    {
      v14 = v39;
    }

    else
    {
      v14 = &stru_100285AA0;
    }

    v15 = objc_retainBlock(v14);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v15;

    if (v40)
    {
      v17 = v40;
    }

    else
    {
      v17 = &stru_100285AC0;
    }

    v18 = objc_retainBlock(v17);
    cancelBlock = v11->_cancelBlock;
    v11->_cancelBlock = v18;

    objc_storeStrong(&v11->_photoLibraries, a3);
    v20 = +[NSMutableDictionary dictionary];
    mocDict = v11->_mocDict;
    v11->_mocDict = v20;

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = v37;
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v23)
    {
      v24 = *v42;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v41 + 1) + 8 * i);
          v27 = [MADPhotosDataStoreClient sharedMigrationContextForPhotoLibrary:v26];
          if (!v27)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v34 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v34))
              {
                v35 = [v26 photoLibraryURL];
                *buf = 138412290;
                v47 = v35;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[MACDMigration] Failed to create context for photo library %@", buf, 0xCu);
              }
            }

            v33 = 0;
            goto LABEL_22;
          }

          v28 = v11->_mocDict;
          v29 = [v26 photoLibraryURL];
          v30 = [v29 path];
          [(NSMutableDictionary *)v28 setObject:v27 forKeyedSubscript:v30];
        }

        v23 = [v22 countByEnumeratingWithState:&v41 objects:v48 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v31 = +[NSMutableDictionary dictionary];
    migrationAnalytics = v11->_migrationAnalytics;
    v11->_migrationAnalytics = v31;
  }

  v33 = v11;
LABEL_22:

  return v33;
}

+ (id)taskWithPhotoLibraries:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:v9 progressHandler:v10 completionHandler:v11 cancelBlock:v12];

  return v13;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    (*(self->_completionHandler + 2))();
  }

  v4.receiver = self;
  v4.super_class = MADPhotosDatabaseMigrationProcessingTask;
  [(MADPhotosDatabaseMigrationProcessingTask *)&v4 dealloc];
}

- (BOOL)isCancelled
{
  if ((*(self->_cancelBlock + 2))())
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(&self->_cancel);
  }

  return v3 & 1;
}

- (id)_mocForPhotoLibrary:(id)a3
{
  mocDict = self->_mocDict;
  v4 = [a3 photoLibraryURL];
  v5 = [v4 path];
  v6 = [(NSMutableDictionary *)mocDict objectForKeyedSubscript:v5];

  return v6;
}

- (id)_analyticsForPhotoLibrary:(id)a3
{
  v4 = [a3 photoLibraryURL];
  v5 = [v4 path];

  v6 = [(NSMutableDictionary *)self->_migrationAnalytics objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->_migrationAnalytics setObject:v7 forKeyedSubscript:v5];
  }

  v8 = [(NSMutableDictionary *)self->_migrationAnalytics objectForKeyedSubscript:v5];

  return v8;
}

- (void)_accumulateOverallField:(id)a3 value:(unint64_t)a4
{
  v9 = a3;
  v6 = [(NSMutableDictionary *)self->_migrationAnalytics objectForKeyedSubscript:?];
  v7 = [v6 unsignedIntegerValue];

  v8 = [NSNumber numberWithUnsignedInteger:&v7[a4]];
  [(NSMutableDictionary *)self->_migrationAnalytics setObject:v8 forKeyedSubscript:v9];
}

- (void)_accumulateOverallRetrieved:(unint64_t)a3
{
  v4 = VCPAnalyticsFieldMigrationRetrievedForTable(@"Overall");
  [MADPhotosDatabaseMigrationProcessingTask _accumulateOverallField:"_accumulateOverallField:value:" value:?];
}

- (void)_accumulateOverallInserted:(unint64_t)a3
{
  v4 = VCPAnalyticsFieldMigrationInsertedForTable(@"Overall");
  [MADPhotosDatabaseMigrationProcessingTask _accumulateOverallField:"_accumulateOverallField:value:" value:?];
}

- (int)_migrateAssetsAndResultsForPhotoLibrary:(id)a3
{
  v54 = a3;
  v51 = +[NSDate now];
  if ((atomic_load_explicit(&qword_1002B8300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B8300))
  {
    v49 = +[MADManagedPhotosAsset entity];
    qword_1002B82F8 = [v49 name];

    __cxa_guard_release(&qword_1002B8300);
  }

  if ((atomic_load_explicit(&qword_1002B8310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B8310))
  {
    v50 = +[MADManagedPhotosResult entity];
    qword_1002B8308 = [v50 name];

    __cxa_guard_release(&qword_1002B8310);
  }

  v3 = [VCPAnalyzedAssets assetsFromPhotoLibrary:v54];
  v55 = [VCPDatabaseReader databaseForPhotoLibrary:v54];
  v52 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v54];
  v56 = [(MADPhotosDatabaseMigrationProcessingTask *)self _mocForPhotoLibrary:v54];
  v4 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v5 = VCPLogToOSLogType[4];
  type = VCPLogToOSLogType[3];
  v57 = "ecTask=}32";
  do
  {
    if (v4 >= [v3 count])
    {
      [v51 timeIntervalSinceNow];
      v31 = v30;
      v57 = [NSString stringWithFormat:@"%@And%@", qword_1002B82F8, qword_1002B8308];
      v32 = VCPAnalyticsFieldMigrationDurationForTable(v57);
      v33 = VCPAnalyticsFieldMigrationRetrievedForTable(qword_1002B82F8);
      v34 = VCPAnalyticsFieldMigrationInsertedForTable(qword_1002B82F8);
      v35 = VCPAnalyticsFieldMigrationRetrievedForTable(qword_1002B8308);
      v36 = VCPAnalyticsFieldMigrationInsertedForTable(qword_1002B8308);
      v37 = [NSNumber numberWithDouble:-v31];
      v38 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v54];
      [v38 setObject:v37 forKeyedSubscript:v32];

      v39 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v3 count]);
      v40 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v54];
      [v40 setObject:v39 forKeyedSubscript:v33];

      v41 = [NSNumber numberWithUnsignedInteger:v78[3]];
      v42 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v54];
      [v42 setObject:v41 forKeyedSubscript:v34];

      v43 = [NSNumber numberWithUnsignedInteger:v70[3]];
      v44 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v54];
      [v44 setObject:v43 forKeyedSubscript:v35];

      v45 = [NSNumber numberWithUnsignedInteger:v74[3]];
      v46 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v54];
      [v46 setObject:v45 forKeyedSubscript:v36];

      v47 = [v3 count];
      [(MADPhotosDatabaseMigrationProcessingTask *)self _accumulateOverallRetrieved:&v47[v70[3]]];
      [(MADPhotosDatabaseMigrationProcessingTask *)self _accumulateOverallInserted:v74[3] + v78[3]];

      LODWORD(v57) = 0;
      break;
    }

    v6 = objc_autoreleasePoolPush();
    if ([(MADPhotosDatabaseMigrationProcessingTask *)self isCancelled])
    {
      v7 = 0;
      v8 = 4294967168;
      goto LABEL_35;
    }

    v9 = +[VCPWatchdog sharedWatchdog];
    [v9 pet];

    v10 = +[NSMutableDictionary dictionary];
    for (i = v4; ; ++i)
    {
      v12 = [v3 count];
      if (v4 + 100 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v4 + 100;
      }

      if (i >= v13)
      {
        v20 = [v10 allKeys];
        v21 = [v55 migration_queryAnalysesForAssets:v20 statsFlags:0 withTypes:0];

        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_1000C75E4;
        v60[3] = &unk_100285AE8;
        v22 = v10;
        v61 = v22;
        v62 = self;
        v23 = v56;
        v63 = v23;
        v65 = &v77;
        v16 = v21;
        v64 = v16;
        v66 = &v69;
        v67 = &v73;
        v59 = 0;
        v24 = [v23 mad_performAndSaveChanges:v60 error:&v59];
        v25 = v59;
        if ((v24 & 1) == 0)
        {
          v26 = v25;
          v57 = [v25 code];
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            v27 = [v22 count];
            *buf = 67109120;
            v82 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration|v1] Failed to migrate a batch of %d asset with analysis records", buf, 8u);
          }

          v7 = 0;
          goto LABEL_33;
        }

        v26 = v25;
        if ([objc_opt_class() shouldDeleteLegacyWhileMigrating])
        {
          if ([(MADPhotosDatabaseMigrationProcessingTask *)self isCancelled])
          {
            v7 = 0;
            v57 = 4294967168;
LABEL_33:

            v14 = v57;
            goto LABEL_34;
          }

          v28 = +[VCPWatchdog sharedWatchdog];
          [v28 pet];

          v29 = [v22 allKeys];
          [v52 migration_deleteAnalysisForAssets:v29];

          [v52 commit];
        }

        [v23 mad_reset];
        v7 = 1;
        goto LABEL_33;
      }

      v68 = 0;
      v14 = [v3 next:&v68];
      v15 = v68;
      v16 = v15;
      if (v14)
      {
        break;
      }

      v17 = [v15 localIdentifier];
      v18 = v17 == 0;

      if (v18)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v5))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MACDMigration|v1] Asset local identifier is nil, skip asset", buf, 2u);
        }
      }

      else
      {
        v19 = [v16 localIdentifier];
        [v10 setObject:v16 forKeyedSubscript:v19];
      }
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration|v1] Failed to fetch next record from Assets", buf, 2u);
    }

    v7 = 0;
LABEL_34:

    v8 = v14;
LABEL_35:
    v57 = v8;
    objc_autoreleasePoolPop(v6);
    v4 += 100;
  }

  while ((v7 & 1) != 0);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);

  return v57;
}

- (int)_saveBatch:(id)a3 entityName:(id)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v11 = [(MADPhotosDatabaseMigrationProcessingTask *)self _mocForPhotoLibrary:v10];
  if ([v11 mad_insertBatch:v8 entityName:v9 insertedCount:&v18])
  {
    v12 = -18;
  }

  else
  {
    if (v18)
    {
      v13 = [NSNumber numberWithUnsignedInteger:?];
      v14 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v10];
      v15 = VCPAnalyticsFieldMigrationInsertedForTable(v9);
      [v14 setObject:v13 forKeyedSubscript:v15];

      [(MADPhotosDatabaseMigrationProcessingTask *)self _accumulateOverallInserted:v18];
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v16 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412290;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MACDMigration|v1] Unable to track inserted rows for entity: %@", buf, 0xCu);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (int)_migrateKeyValueStoreForLibrary:(id)a3
{
  v27 = a3;
  v25 = +[NSDate now];
  if ((atomic_load_explicit(&qword_1002B8320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B8320))
  {
    v23 = +[MADManagedKeyValueStore entity];
    qword_1002B8318 = [v23 name];

    __cxa_guard_release(&qword_1002B8320);
  }

  v3 = [VCPDatabaseReader databaseForPhotoLibrary:v27];
  v24 = v3;
  if (v3)
  {
    v28 = [v3 migration_loadKeyValues];
    if (v28)
    {
      v4 = +[NSMutableArray array];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v5 = [v28 allKeys];
      v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v6)
      {
        v7 = *v30;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v30 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v29 + 1) + 8 * i);
            v33[1] = @"value";
            v34[0] = v9;
            v33[0] = @"key";
            v10 = [v28 valueForKey:?];
            v34[1] = v10;
            v11 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
            [v4 addObject:v11];
          }

          v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v6);
      }

      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
      v13 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v27];
      v14 = VCPAnalyticsFieldMigrationRetrievedForTable(qword_1002B8318);
      [v13 setObject:v12 forKeyedSubscript:v14];

      -[MADPhotosDatabaseMigrationProcessingTask _accumulateOverallRetrieved:](self, "_accumulateOverallRetrieved:", [v4 count]);
      if ([v4 count])
      {
        v15 = [(MADPhotosDatabaseMigrationProcessingTask *)self _saveBatch:v4 entityName:qword_1002B8318 photoLibrary:v27];
      }

      else
      {
        v15 = 0;
      }

      [v25 timeIntervalSinceNow];
      v19 = [NSNumber numberWithDouble:-v18];
      v20 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v27];
      v21 = VCPAnalyticsFieldMigrationDurationForTable(qword_1002B8318);
      [v20 setObject:v19 forKeyedSubscript:v21];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v17 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 138412290;
          v37 = qword_1002B8318;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MACDMigration|v1] Failed to load %@ entries from legacy database", buf, 0xCu);
        }
      }

      v15 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v16 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MACDMigration|v1] No legacy database is present", buf, 2u);
      }
    }

    v15 = -18;
  }

  return v15;
}

- (int)_migrateChangeTokensForLibrary:(id)a3
{
  v30 = a3;
  v28 = +[NSDate now];
  if ((atomic_load_explicit(&qword_1002B8330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B8330))
  {
    v25 = +[MADManagedChangeToken entity];
    qword_1002B8328 = [v25 name];

    __cxa_guard_release(&qword_1002B8330);
  }

  v3 = [VCPDatabaseReader databaseForPhotoLibrary:v30];
  v27 = v3;
  if (v3)
  {
    v26 = [v3 loadChangeTokens];
    if (v26)
    {
      v32 = +[NSMutableArray array];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v26;
      v4 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v4)
      {
        v5 = *v34;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v34 != v5)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v33 + 1) + 8 * i);
            v37[0] = @"tokenID";
            v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 tokenID]);
            v38[0] = v8;
            v37[1] = @"tokenType";
            v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 tokenType]);
            v38[1] = v9;
            v37[2] = @"tokenData";
            v10 = [v7 tokenData];
            v38[2] = v10;
            v37[3] = @"date";
            v11 = [v7 date];
            v38[3] = v11;
            v37[4] = @"version";
            v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 version]);
            v38[4] = v12;
            v13 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5];
            [v32 addObject:v13];
          }

          v4 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v4);
      }

      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 count]);
      v15 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v30];
      v16 = VCPAnalyticsFieldMigrationRetrievedForTable(qword_1002B8328);
      [v15 setObject:v14 forKeyedSubscript:v16];

      -[MADPhotosDatabaseMigrationProcessingTask _accumulateOverallRetrieved:](self, "_accumulateOverallRetrieved:", [v32 count]);
      if ([v32 count])
      {
        v17 = [(MADPhotosDatabaseMigrationProcessingTask *)self _saveBatch:v32 entityName:qword_1002B8328 photoLibrary:v30];
      }

      else
      {
        v17 = 0;
      }

      [v28 timeIntervalSinceNow];
      v21 = [NSNumber numberWithDouble:-v20];
      v22 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v30];
      v23 = VCPAnalyticsFieldMigrationDurationForTable(qword_1002B8328);
      [v22 setObject:v21 forKeyedSubscript:v23];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v19 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v19))
        {
          *buf = 138412290;
          v41 = qword_1002B8328;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MACDMigration|v1] Failed to load %@ entries from legacy database", buf, 0xCu);
        }
      }

      v17 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v18 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[MACDMigration|v1] No legacy database is present", buf, 2u);
      }
    }

    v17 = -18;
  }

  return v17;
}

- (int)_migrateProgressHistoryForLibrary:(id)a3
{
  v30 = a3;
  v27 = +[NSDate now];
  if ((atomic_load_explicit(&qword_1002B8340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B8340))
  {
    v25 = +[MADManagedBackgroundAnalysisProgressHistory entity];
    qword_1002B8338 = [v25 name];

    __cxa_guard_release(&qword_1002B8340);
  }

  v29 = [VCPDatabaseReader databaseForPhotoLibrary:v30];
  if (v29)
  {
    v38 = 0;
    v3 = +[NSDate distantPast];
    [v29 migration_queryProgressHistoryRecords:&v38 sinceDate:v3];
    v26 = v38;

    if (v26)
    {
      v33 = +[NSMutableArray array];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v26;
      v4 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v4)
      {
        v32 = *v35;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v35 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v34 + 1) + 8 * i);
            v39[0] = @"activityID";
            v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 activityID]);
            v40[0] = v7;
            v39[1] = @"analysisSubtype";
            v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 analysisSubtype]);
            v40[1] = v8;
            v39[2] = @"processedAssetCount";
            v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 processedAssetCount]);
            v40[2] = v9;
            v39[3] = @"storeDate";
            v10 = [v6 storeDate];
            v40[3] = v10;
            v39[4] = @"totalAssetCount";
            v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 totalAssetCount]);
            v40[4] = v11;
            v39[5] = @"version";
            v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 version]);
            v40[5] = v12;
            v13 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:6];
            [v33 addObject:v13];
          }

          v4 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
        }

        while (v4);
      }

      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v33 count]);
      v15 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v30];
      v16 = VCPAnalyticsFieldMigrationRetrievedForTable(qword_1002B8338);
      [v15 setObject:v14 forKeyedSubscript:v16];

      -[MADPhotosDatabaseMigrationProcessingTask _accumulateOverallRetrieved:](self, "_accumulateOverallRetrieved:", [v33 count]);
      if ([v33 count])
      {
        v17 = [(MADPhotosDatabaseMigrationProcessingTask *)self _saveBatch:v33 entityName:qword_1002B8338 photoLibrary:v30];
      }

      else
      {
        v17 = 0;
      }

      [v27 timeIntervalSinceNow];
      v21 = [NSNumber numberWithDouble:-v20];
      v22 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v30];
      v23 = VCPAnalyticsFieldMigrationDurationForTable(qword_1002B8338);
      [v22 setObject:v21 forKeyedSubscript:v23];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v19 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v19))
        {
          *buf = 138412290;
          v43 = qword_1002B8338;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MACDMigration|v1] Failed to load %@ entries from legacy database", buf, 0xCu);
        }
      }

      v17 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v18 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[MACDMigration|v1] No legacy database is present", buf, 2u);
      }
    }

    v17 = -18;
  }

  return v17;
}

- (int)_migrateProcessingStatusForLibrary:(id)a3
{
  v32 = a3;
  v30 = +[NSDate now];
  if ((atomic_load_explicit(&qword_1002B8350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B8350))
  {
    v27 = +[MADManagedProcessingStatus entity];
    qword_1002B8348 = [v27 name];

    __cxa_guard_release(&qword_1002B8350);
  }

  v3 = [VCPDatabaseReader databaseForPhotoLibrary:v32];
  v29 = v3;
  if (v3)
  {
    v28 = [v3 loadProcessingStatus];
    if (v28)
    {
      v35 = +[NSMutableArray array];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v28;
      v4 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v4)
      {
        v34 = *v40;
        do
        {
          v36 = v4;
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v40 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v39 + 1) + 8 * i);
            v43[0] = @"attemptCount";
            v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 attempts]);
            v44[0] = v38;
            v43[1] = @"errorCode";
            v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 errorCode]);
            v44[1] = v37;
            v43[2] = @"errorLine";
            v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 errorLine]);
            v44[2] = v7;
            v43[3] = @"lastAttemptDate";
            v8 = [v6 lastAttemptDate];
            v44[3] = v8;
            v43[4] = @"localIdentifier";
            v9 = [v6 localIdentifier];
            v44[4] = v9;
            v43[5] = @"mediaType";
            v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 mediaType]);
            v44[5] = v10;
            v43[6] = @"mediaSubtypes";
            v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 mediaSubtypes]);
            v44[6] = v11;
            v43[7] = @"nextAttemptDate";
            v12 = [v6 nextAttemptDate];
            v44[7] = v12;
            v43[8] = @"status";
            v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 status]);
            v44[8] = v13;
            v43[9] = @"taskID";
            v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 taskID]);
            v44[9] = v14;
            v15 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:10];
            [v35 addObject:v15];
          }

          v4 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v4);
      }

      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v35 count]);
      v17 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v32];
      v18 = VCPAnalyticsFieldMigrationRetrievedForTable(qword_1002B8348);
      [v17 setObject:v16 forKeyedSubscript:v18];

      -[MADPhotosDatabaseMigrationProcessingTask _accumulateOverallRetrieved:](self, "_accumulateOverallRetrieved:", [v35 count]);
      if ([v35 count])
      {
        v19 = [(MADPhotosDatabaseMigrationProcessingTask *)self _saveBatch:v35 entityName:qword_1002B8348 photoLibrary:v32];
      }

      else
      {
        v19 = 0;
      }

      [v30 timeIntervalSinceNow];
      v23 = [NSNumber numberWithDouble:-v22];
      v24 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v32];
      v25 = VCPAnalyticsFieldMigrationDurationForTable(qword_1002B8348);
      [v24 setObject:v23 forKeyedSubscript:v25];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v21 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          *buf = 138412290;
          v47 = qword_1002B8348;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MACDMigration|v1] Failed to load %@ entries from legacy database", buf, 0xCu);
        }
      }

      v19 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v20 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[MACDMigration|v1] No legacy database is present", buf, 2u);
      }
    }

    v19 = -18;
  }

  return v19;
}

- (int)_migrateMomentsScheduledAssetForLibrary:(id)a3
{
  v28 = a3;
  v26 = +[NSDate now];
  if ((atomic_load_explicit(&qword_1002B8360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B8360))
  {
    v23 = +[MADManagedMomentsScheduledAsset entity];
    qword_1002B8358 = [v23 name];

    __cxa_guard_release(&qword_1002B8360);
  }

  v3 = [VCPDatabaseReader databaseForPhotoLibrary:v28];
  v25 = v3;
  if (v3)
  {
    v24 = [v3 migration_loadMomentsScheduledAssets];
    if (v24)
    {
      v30 = +[NSMutableArray array];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v24;
      v4 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v4)
      {
        v5 = *v32;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v32 != v5)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v31 + 1) + 8 * i);
            v35[0] = @"localIdentifier";
            v8 = [v7 localIdentifier];
            v36[0] = v8;
            v35[1] = @"requestDate";
            v9 = [v7 requestDate];
            v36[1] = v9;
            v35[2] = @"taskID";
            v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 taskID]);
            v36[2] = v10;
            v11 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
            [v30 addObject:v11];
          }

          v4 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v4);
      }

      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 count]);
      v13 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v28];
      v14 = VCPAnalyticsFieldMigrationRetrievedForTable(qword_1002B8358);
      [v13 setObject:v12 forKeyedSubscript:v14];

      -[MADPhotosDatabaseMigrationProcessingTask _accumulateOverallRetrieved:](self, "_accumulateOverallRetrieved:", [v30 count]);
      if ([v30 count])
      {
        v15 = [(MADPhotosDatabaseMigrationProcessingTask *)self _saveBatch:v30 entityName:qword_1002B8358 photoLibrary:v28];
      }

      else
      {
        v15 = 0;
      }

      [v26 timeIntervalSinceNow];
      v19 = [NSNumber numberWithDouble:-v18];
      v20 = [(MADPhotosDatabaseMigrationProcessingTask *)self _analyticsForPhotoLibrary:v28];
      v21 = VCPAnalyticsFieldMigrationDurationForTable(qword_1002B8358);
      [v20 setObject:v19 forKeyedSubscript:v21];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v17 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 138412290;
          v39 = qword_1002B8358;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MACDMigration|v1] Failed to load %@ entries from legacy database", buf, 0xCu);
        }
      }

      v15 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v16 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MACDMigration|v1] No legacy database is present", buf, 2u);
      }
    }

    v15 = -18;
  }

  return v15;
}

- (int)_migrateDatabaseToV1ForPhotoLibrary:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [v4 photoLibraryURL];
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MACDMigration|v1] Migrating database to v1 for photo library %@", &v24, 0xCu);
    }
  }

  if (![(MADPhotosDatabaseMigrationProcessingTask *)self isCancelled])
  {
    v8 = +[VCPWatchdog sharedWatchdog];
    [v8 pet];

    v9 = [v4 vcp_mediaAnalysisDatabaseFilepath];
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (v11)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v12 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v12))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MACDMigration|v1] Migrating Assets and Results records from legacy database", &v24, 2u);
        }
      }

      v7 = [(MADPhotosDatabaseMigrationProcessingTask *)self _migrateAssetsAndResultsForPhotoLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_21;
        }

        v13 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v13))
        {
          goto LABEL_21;
        }

        LOWORD(v24) = 0;
        v14 = "[MACDMigration|v1] Failed to migrate Assets and Results records from legacy database";
LABEL_58:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v14, &v24, 2u);
LABEL_21:

        goto LABEL_22;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v19 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v19))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MACDMigration|v1] Migrating KeyValueStore records from legacy database", &v24, 2u);
        }
      }

      v7 = [(MADPhotosDatabaseMigrationProcessingTask *)self _migrateKeyValueStoreForLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_21;
        }

        v13 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v13))
        {
          goto LABEL_21;
        }

        LOWORD(v24) = 0;
        v14 = "[MACDMigration|v1] Failed to migrate KeyValueStore records from legacy database";
        goto LABEL_58;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v20 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[MACDMigration|v1] Migrating ChangeTokens records from legacy database", &v24, 2u);
        }
      }

      v7 = [(MADPhotosDatabaseMigrationProcessingTask *)self _migrateChangeTokensForLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_21;
        }

        v13 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v13))
        {
          goto LABEL_21;
        }

        LOWORD(v24) = 0;
        v14 = "[MACDMigration|v1] Failed to migrate ChangeTokens records from legacy database";
        goto LABEL_58;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v21 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MACDMigration|v1] Migrating ProcessingStatus records from legacy database", &v24, 2u);
        }
      }

      v7 = [(MADPhotosDatabaseMigrationProcessingTask *)self _migrateProcessingStatusForLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_21;
        }

        v13 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v13))
        {
          goto LABEL_21;
        }

        LOWORD(v24) = 0;
        v14 = "[MACDMigration|v1] Failed to migrate ProcessingStatus records from legacy database";
        goto LABEL_58;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v22 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[MACDMigration|v1] Migrating BackgroundAnalysisProgressHistory records from legacy database", &v24, 2u);
        }
      }

      v7 = [(MADPhotosDatabaseMigrationProcessingTask *)self _migrateProgressHistoryForLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_21;
        }

        v13 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v13))
        {
          goto LABEL_21;
        }

        LOWORD(v24) = 0;
        v14 = "[MACDMigration|v1] Failed to migrate BackgroundAnalysisProgressHistory records from legacy database";
        goto LABEL_58;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v23 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MACDMigration|v1] Migrating MomentsScheduledAsset records from legacy database", &v24, 2u);
        }
      }

      v7 = [(MADPhotosDatabaseMigrationProcessingTask *)self _migrateMomentsScheduledAssetForLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_21;
        }

        v13 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v13))
        {
          goto LABEL_21;
        }

        LOWORD(v24) = 0;
        v14 = "[MACDMigration|v1] Failed to migrate MomentsScheduledAsset records from legacy database";
        goto LABEL_58;
      }
    }

    else if (MediaAnalysisLogLevel() >= 5)
    {
      v15 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MACDMigration|v1] Legacy database file does not exist, no data migration needed to reach v1", &v24, 2u);
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v16 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MACDMigration|v1] Setting v1 to MACD", &v24, 2u);
      }
    }

    v17 = +[MADPhotosDataStoreClient sharedClient];
    v7 = [v17 setDatabaseVersion:1 photoLibrary:v4];

    goto LABEL_21;
  }

  v7 = -128;
LABEL_22:

  return v7;
}

- (int)_bumpVectorDatabaseVersionWithLocalIdentifiers:(id)a3 embeddingType:(unint64_t)a4 fromUnifiedEmbeddingVersion:(unint64_t)a5 toUnifiedEmbeddingVersion:(unint64_t)a6 updatedLocalIdentifiers:(id)a7 photoLibrary:(id)a8
{
  v33 = a3;
  v13 = a7;
  v34 = a8;
  v36 = v13;
  [v13 removeAllObjects];
  v35 = [NSString stringWithFormat:@"[MACDMigration][VSKEmbedding][v%lu->v%lu][%lu]", a5, a6, a4];
  [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v34];
  v31 = v42 = 0;
  v32 = [v31 fetchAssetsWithLocalIdentifiers:v33 embeddingType:a4 error:&v42];
  v14 = v42;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 code];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v17 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        *buf = 138412546;
        v45 = v35;
        v46 = 2112;
        v47 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Failed fetching from VSK database - %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v18 = +[NSMutableArray array];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v19 = v32;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v20)
    {
      v21 = *v39;
      v22 = VCPLogToOSLogType[3];
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v25 = objc_autoreleasePoolPush();
          v26 = [v24 mad_updateAssetWithEmbeddingVersion:a6];
          if (v26)
          {
            [v18 addObject:v26];
            v27 = [v26 mad_photosLocalIdentifier];
            [v36 addObject:v27];
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v22))
          {
            v28 = [v24 mad_photosLocalIdentifier];
            *buf = 138412546;
            v45 = v35;
            v46 = 2112;
            v47 = v28;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@[%@] Failed to package new attributes; ignore", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v25);
        }

        v20 = [v19 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v20);
    }

    v37 = 0;
    v16 = [v31 insertOrReplaceAssetsEmbeddings:v18 error:&v37];
    v15 = v37;
    if (v16)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v29 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          *buf = 138412546;
          v45 = v35;
          v46 = 2112;
          v47 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Failed to publish VSKAssets - %@", buf, 0x16u);
        }
      }
    }
  }

  return v16;
}

- (int)_bumpImageEmbeddingVersionWithAssetBatch:(id)a3 fromImageEmbeddingVersion:(int)a4 fromUnifiedEmbeddingVersion:(unint64_t)a5 toImageEmbeddingVersion:(int)a6 toUnifiedEmbeddingVersion:(unint64_t)a7 photoLibrary:(id)a8
{
  v9 = *&a6;
  v10 = *&a4;
  v39 = a3;
  v38 = a8;
  v12 = [NSString stringWithFormat:@"[MACDMigration][ImageEmbedding][v%d->v%d]", v10, v9];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v13 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 138412546;
      v53 = v12;
      v54 = 2048;
      v55 = [v39 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Start migrating %lu assets ...", buf, 0x16u);
    }
  }

  if ([(MADPhotosDatabaseMigrationProcessingTask *)self isCancelled])
  {
    v14 = -128;
  }

  else
  {
    v15 = +[VCPWatchdog sharedWatchdog];
    v34 = v9;
    v35 = v12;
    [v15 pet];

    v16 = +[NSMutableDictionary dictionary];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = v39;
    v18 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v18)
    {
      v19 = *v48;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v47 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = [v21 localIdentifier];
          [v16 setObject:v21 forKeyedSubscript:v23];

          objc_autoreleasePoolPop(v22);
        }

        v18 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v18);
    }

    v24 = +[NSMutableArray array];
    v25 = [v16 allKeys];
    v14 = [(MADPhotosDatabaseMigrationProcessingTask *)self _bumpVectorDatabaseVersionWithLocalIdentifiers:v25 embeddingType:1 fromUnifiedEmbeddingVersion:a5 toUnifiedEmbeddingVersion:a7 updatedLocalIdentifiers:v24 photoLibrary:v38];

    if (!v14)
    {
      if (![v24 count])
      {
        goto LABEL_21;
      }

      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000CADE4;
      v41[3] = &unk_100285B10;
      v42 = v24;
      v43 = v16;
      v26 = v35;
      v44 = v26;
      v45 = v10;
      v46 = v34;
      v27 = objc_retainBlock(v41);
      cancelBlock = self->_cancelBlock;
      v40 = 0;
      v29 = [v38 mad_performChangesAndWait:v27 activity:259 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100285B30 error:&v40];
      v30 = v40;
      v31 = v30;
      if (v29)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v30 code];
        if (MediaAnalysisLogLevel() >= 3)
        {
          v32 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v32))
          {
            *buf = 138412546;
            v53 = v26;
            v54 = 2112;
            v55 = v31;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[%@][MACD] Failed to update Photos DB: %@", buf, 0x16u);
          }
        }
      }

      if (v29)
      {
LABEL_21:
        v14 = 0;
      }
    }

    v12 = v35;
  }

  return v14;
}

- (int)_bumpVideoEmbeddingVersionWithAssetBatch:(id)a3 fromVideoEmbeddingVersion:(int)a4 fromUnifiedEmbeddingVersion:(unint64_t)a5 toVideoEmbeddingVersion:(int)a6 toUnifiedEmbeddingVersion:(unint64_t)a7 photoLibrary:(id)a8
{
  v9 = *&a6;
  v11 = *&a4;
  v48 = a3;
  v49 = a8;
  v43 = v11;
  v44 = v9;
  v13 = [NSString stringWithFormat:@"[MACDMigration][VideoEmbedding][v%d->v%d]", v11, v9];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v14 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      *buf = 138412546;
      v68 = v13;
      v69 = 2048;
      v70 = [v48 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Start migrating %lu assets ...", buf, 0x16u);
    }
  }

  if ([(MADPhotosDatabaseMigrationProcessingTask *)self isCancelled])
  {
    v15 = -128;
  }

  else
  {
    v16 = +[VCPWatchdog sharedWatchdog];
    v45 = v13;
    [v16 pet];

    v17 = +[NSMutableDictionary dictionary];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v18 = v48;
    v19 = [v18 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v19)
    {
      v20 = *v63;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v63 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v62 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 localIdentifier];
          [v17 setObject:v22 forKeyedSubscript:v24];

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v18 countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v19);
    }

    v25 = +[NSMutableArray array];
    v26 = [v17 allKeys];
    v15 = [(MADPhotosDatabaseMigrationProcessingTask *)self _bumpVectorDatabaseVersionWithLocalIdentifiers:v26 embeddingType:2 fromUnifiedEmbeddingVersion:a5 toUnifiedEmbeddingVersion:a7 updatedLocalIdentifiers:v25 photoLibrary:v49];

    if (!v15)
    {
      v27 = MediaAnalysisResultsTypesForAnalysisTypes();
      v28 = [v49 mad_fetchRequest];
      v29 = [v28 fetchAnalysesWithLocalIdentifiers:v25 predicate:0 resultTypes:v27];

      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1000CB874;
      v58[3] = &unk_100284FF0;
      v30 = v29;
      v59 = v30;
      v31 = v45;
      v60 = v31;
      v32 = v17;
      v61 = v32;
      v57 = 0;
      LOBYTE(v29) = [v49 mad_performAnalysisDataStoreChanges:v58 error:&v57];
      v33 = v57;
      v47 = v33;
      if (v29)
      {
        if (![v25 count])
        {
          goto LABEL_25;
        }

        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000CBA20;
        v51[3] = &unk_100285B10;
        v52 = v25;
        v53 = v32;
        v34 = v31;
        v54 = v34;
        v55 = v43;
        v56 = v44;
        v35 = objc_retainBlock(v51);
        cancelBlock = self->_cancelBlock;
        v50 = 0;
        v37 = [v49 mad_performChangesAndWait:v35 activity:259 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100285B78 error:&v50];
        v38 = v50;
        v39 = v38;
        if (v37)
        {
          v15 = 0;
        }

        else
        {
          v15 = [v38 code];
          if (MediaAnalysisLogLevel() >= 3)
          {
            v41 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v41))
            {
              *buf = 138412546;
              v68 = v34;
              v69 = 2112;
              v70 = v39;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[%@][MACD] Failed to update Photos DB: %@", buf, 0x16u);
            }
          }
        }

        if (v37)
        {
LABEL_25:
          v15 = 0;
        }
      }

      else
      {
        v15 = [v33 code];
        if (MediaAnalysisLogLevel() >= 3)
        {
          v40 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v40))
          {
            *buf = 138412546;
            v68 = v31;
            v69 = 2112;
            v70 = v47;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[%@][MACD] Failed to update MA DB: %@", buf, 0x16u);
          }
        }
      }
    }

    v13 = v45;
  }

  return v15;
}

- (int)_migrateDatabaseToV2ForPhotoLibrary:(id)a3
{
  v4 = a3;
  if ((+[VCPVideoCNNAnalyzer isMUBackboneEnabled]& 1) != 0)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v5 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = [v4 photoLibraryURL];
        *buf = 138412546;
        v42 = @"[MACDMigration|v2]";
        v43 = 2112;
        *v44 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Migrating database to v2 for photo library %@", buf, 0x16u);
      }
    }

    if ([(MADPhotosDatabaseMigrationProcessingTask *)self isCancelled])
    {
      LODWORD(v7) = -128;
    }

    else
    {
      v7 = +[VCPWatchdog sharedWatchdog];
      [v7 pet];

      if (MediaAnalysisLogLevel() >= 5)
      {
        LODWORD(v7) = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, VCPLogToOSLogType[5]))
        {
          *buf = 138412802;
          v42 = @"[MACDMigration|v2]";
          v43 = 1024;
          *v44 = 74;
          *&v44[4] = 1024;
          *&v44[6] = 75;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Migrating Image Embeddings from %d -> %d", buf, 0x18u);
        }
      }

      LOWORD(v35) = 0;
      v40[1] = 0;
      v39 = [[PHMediaProcessingAlgorithmVersionProvider alloc] initWithSceneAnalysisVersion:0 faceAnalysisVersion:0 characterRecognitionAlgorithmVersion:0 visualSearchAlgorithmVersion:0 stickerConfidenceAlgorithmVersion:0 vaAnalysisVersion:0 vaLocationAnalysisVersion:v35 mediaAnalysisVersion:0 mediaAnalysisImageVersion:0x4A00000000 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
      v9 = [v4 fetchProcessedAssetsForMediaProcessingTaskID:17 priority:0 algorithmVersion:0.0 sceneConfidenceThreshold:? error:?];
      v10 = 0;
      if (v10)
      {
        v11 = v10;
        if (MediaAnalysisLogLevel() >= 3)
        {
          v12 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v12))
          {
            *buf = 138412546;
            v42 = @"[MACDMigration|v2]";
            v43 = 2112;
            *v44 = v11;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Failed to fetch processed image assets: %@\n", buf, 0x16u);
          }
        }

        LODWORD(v7) = -18;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          LODWORD(v7) = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, VCPLogToOSLogType[6]))
          {
            v13 = [v9 count];
            *buf = 138412546;
            v42 = @"[MACDMigration|v2]";
            v43 = 2048;
            *v44 = v13;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Fetched %lu assets for migrating Image Embeddings", buf, 0x16u);
          }
        }

        v14 = +[NSMutableArray array];
        v15 = 0;
        type = VCPLogToOSLogType[3];
        while (v15 < [v9 count])
        {
          v16 = objc_autoreleasePoolPush();
          v17 = [v9 objectAtIndexedSubscript:v15];
          [v14 addObject:v17];

          if ([v14 count] <= 0x63 && v15 != objc_msgSend(v9, "count") - 1)
          {
            goto LABEL_33;
          }

          v18 = objc_autoreleasePoolPush();
          v19 = [(MADPhotosDatabaseMigrationProcessingTask *)self _bumpImageEmbeddingVersionWithAssetBatch:v14 fromImageEmbeddingVersion:74 fromUnifiedEmbeddingVersion:8 toImageEmbeddingVersion:75 toUnifiedEmbeddingVersion:9 photoLibrary:v4];
          if (v19)
          {
            LODWORD(v7) = v19;
            if (MediaAnalysisLogLevel() >= 3)
            {
              LODWORD(v7) = v19;
              if (os_log_type_enabled(&_os_log_default, type))
              {
                *buf = 138412290;
                v42 = @"[MACDMigration|v2]";
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to migrate image assets", buf, 0xCu);
                LODWORD(v7) = v19;
              }
            }
          }

          else
          {
            [v14 removeAllObjects];
          }

          objc_autoreleasePoolPop(v18);
          if (v19)
          {
            v20 = 0;
          }

          else
          {
LABEL_33:
            v20 = 1;
          }

          objc_autoreleasePoolPop(v16);
          ++v15;
          if ((v20 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        if (MediaAnalysisLogLevel() >= 5)
        {
          v21 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v21))
          {
            *buf = 138412802;
            v42 = @"[MACDMigration|v2]";
            v43 = 1024;
            *v44 = 74;
            *&v44[4] = 1024;
            *&v44[6] = 75;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Migrating Video Embeddings from %d -> %d", buf, 0x18u);
          }
        }

        LOWORD(v36) = 0;
        v22 = [[PHMediaProcessingAlgorithmVersionProvider alloc] initWithSceneAnalysisVersion:0 faceAnalysisVersion:0 characterRecognitionAlgorithmVersion:0 visualSearchAlgorithmVersion:0 stickerConfidenceAlgorithmVersion:0 vaAnalysisVersion:0 vaLocationAnalysisVersion:v36 mediaAnalysisVersion:0 mediaAnalysisImageVersion:0x4A000000000000 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];

        v39 = v22;
        v40[0] = 0;
        v23 = [v4 fetchProcessedAssetsForMediaProcessingTaskID:1 priority:0 algorithmVersion:v22 sceneConfidenceThreshold:v40 error:0.0];
        v11 = v40[0];

        v9 = v23;
        if (!v11)
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v25 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v25))
            {
              v26 = [v9 count];
              *buf = 138412546;
              v42 = @"[MACDMigration|v2]";
              v43 = 2048;
              *v44 = v26;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Fetched %lu assets for migrating Video Embeddings", buf, 0x16u);
            }
          }

          v27 = 0;
          while (v27 < [v9 count])
          {
            v28 = objc_autoreleasePoolPush();
            v29 = [v9 objectAtIndexedSubscript:v27];
            [v14 addObject:v29];

            if ([v14 count] <= 0x63 && v27 != objc_msgSend(v9, "count") - 1)
            {
              goto LABEL_62;
            }

            v30 = objc_autoreleasePoolPush();
            v31 = [(MADPhotosDatabaseMigrationProcessingTask *)self _bumpVideoEmbeddingVersionWithAssetBatch:v14 fromVideoEmbeddingVersion:74 fromUnifiedEmbeddingVersion:8 toVideoEmbeddingVersion:75 toUnifiedEmbeddingVersion:9 photoLibrary:v4];
            if (v31)
            {
              LODWORD(v7) = v31;
              if (MediaAnalysisLogLevel() >= 3)
              {
                LODWORD(v7) = v31;
                if (os_log_type_enabled(&_os_log_default, type))
                {
                  *buf = 138412290;
                  v42 = @"[MACDMigration|v2]";
                  _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to migrate video assets", buf, 0xCu);
                  LODWORD(v7) = v31;
                }
              }
            }

            else
            {
              [v14 removeAllObjects];
            }

            objc_autoreleasePoolPop(v30);
            if (v31)
            {
              v32 = 0;
            }

            else
            {
LABEL_62:
              v32 = 1;
            }

            objc_autoreleasePoolPop(v28);
            ++v27;
            if ((v32 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          if (MediaAnalysisLogLevel() >= 6)
          {
            v33 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v33))
            {
              *buf = 138412290;
              v42 = @"[MACDMigration|v2]";
              _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@ Setting v2 to MACD", buf, 0xCu);
            }
          }

          v34 = +[MADPhotosDataStoreClient sharedClient];
          LODWORD(v7) = [v34 setDatabaseVersion:2 photoLibrary:v4];

LABEL_35:
          v11 = 0;
          goto LABEL_44;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412546;
          v42 = @"[MACDMigration|v2]";
          v43 = 2112;
          *v44 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to fetch processed video assets: %@\n", buf, 0x16u);
        }

        LODWORD(v7) = -18;
LABEL_44:
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v8 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 138412290;
        v42 = @"[MACDMigration|v2]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Directly set v2 to MACD", buf, 0xCu);
      }
    }

    v38 = +[MADPhotosDataStoreClient sharedClient];
    LODWORD(v7) = [v38 setDatabaseVersion:2 photoLibrary:v4];
  }

  return v7;
}

- (int)_migrateDatabaseForPhotoLibrary:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [v4 photoLibraryURL];
      *buf = 138412290;
      *v43 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MACDMigration] Migrating database for photo library %@", buf, 0xCu);
    }
  }

  if (![(MADPhotosDatabaseMigrationProcessingTask *)self isCancelled])
  {
    v8 = +[VCPWatchdog sharedWatchdog];
    [v8 pet];

    v9 = mach_continuous_time();
    v10 = +[MADPhotosDataStoreClient sharedClient];
    v41 = 0;
    v7 = [v10 queryDatabaseVersion:&v41 photoLibrary:v4];
    if (v7)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          v12 = [v4 photoLibraryURL];
          *buf = 138412290;
          *v43 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MACDMigration] Failed to query current database version for photo library %@", buf, 0xCu);
        }
      }

      goto LABEL_68;
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v13 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = v41;
        v15 = +[MADPhotosDataStoreClient latestDataStoreVersion];
        *buf = 67109376;
        *v43 = v14;
        *&v43[4] = 1024;
        *&v43[6] = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MACDMigration] Current database version %d, target version %d", buf, 0xEu);
      }
    }

    v16 = v41;
    if (v16 == +[MADPhotosDataStoreClient latestDataStoreVersion])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v17 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MACDMigration] Database already at latest version, skipping migration", buf, 2u);
        }
      }

LABEL_67:
      v7 = 0;
      goto LABEL_68;
    }

    v18 = v41;
    if (v18 > +[MADPhotosDataStoreClient latestDataStoreVersion])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v19 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v19))
        {
          v20 = v41;
          v21 = +[MADPhotosDataStoreClient latestDataStoreVersion];
          *buf = 67109376;
          *v43 = v20;
          *&v43[4] = 1024;
          *&v43[6] = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MACDMigration] Database version (%d) beyond supported latest version (%d), recreating database...", buf, 0xEu);
        }
      }

      v7 = [v10 recreatePersistentStoreForPhotoLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v22 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            v23 = [v4 photoLibraryURL];
            *buf = 138412290;
            *v43 = v23;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[MACDMigration] Failed to recreate persistent store for photo library %@", buf, 0xCu);
          }
        }

        goto LABEL_68;
      }

      v7 = [v10 queryDatabaseVersion:&v41 photoLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_68;
        }

        v24 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v24))
        {
          goto LABEL_68;
        }

        goto LABEL_55;
      }

      if (v41)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_77;
        }

        v25 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v25))
        {
          goto LABEL_77;
        }

        *buf = 0;
        v26 = "[MACDMigration] Failed to recreate database to v0";
LABEL_76:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, v26, buf, 2u);
LABEL_77:
        v7 = -18;
        goto LABEL_68;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v27 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v27))
        {
          *buf = 67109120;
          *v43 = v41;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[MACDMigration] Database recreation complete, current version %d", buf, 8u);
        }
      }
    }

    if (v41 != 1)
    {
      if (v41)
      {
        goto LABEL_63;
      }

      v7 = [(MADPhotosDatabaseMigrationProcessingTask *)self _migrateDatabaseToV1ForPhotoLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_68;
        }

        v28 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v28))
        {
          goto LABEL_68;
        }

        *buf = 0;
        v29 = "[MACDMigration] Failed to migrate to v1 MACD";
        goto LABEL_51;
      }

      v7 = [v10 queryDatabaseVersion:&v41 photoLibrary:v4];
      if (v7)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_68;
        }

        v24 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v24))
        {
          goto LABEL_68;
        }

        goto LABEL_55;
      }

      if (v41 != 1)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_77;
        }

        v25 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v25))
        {
          goto LABEL_77;
        }

        *buf = 0;
        v26 = "[MACDMigration] Failed to update database version to v1";
        goto LABEL_76;
      }
    }

    v7 = [(MADPhotosDatabaseMigrationProcessingTask *)self _migrateDatabaseToV2ForPhotoLibrary:v4];
    if (v7)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_68;
      }

      v28 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v28))
      {
        goto LABEL_68;
      }

      *buf = 0;
      v29 = "[MACDMigration] Failed to migrate to v2 MACD";
LABEL_51:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v28, v29, buf, 2u);
LABEL_68:

      goto LABEL_69;
    }

    v7 = [v10 queryDatabaseVersion:&v41 photoLibrary:v4];
    if (v7)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_68;
      }

      v24 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v24))
      {
        goto LABEL_68;
      }

LABEL_55:
      v30 = [v4 photoLibraryURL];
      *buf = 138412290;
      *v43 = v30;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[MACDMigration] Failed to query recreated database version for photo library %@", buf, 0xCu);

      goto LABEL_68;
    }

    if (v41 != 2)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_77;
      }

      v25 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v25))
      {
        goto LABEL_77;
      }

      *buf = 0;
      v26 = "[MACDMigration] Failed to update database version to v2";
      goto LABEL_76;
    }

    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v31 = objc_autoreleasePoolPush();
      v32 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v4];
      v7 = [v32 rebuildWithForce:1 cancelBlock:self->_cancelBlock extendTimeoutBlock:&stru_100285B98 totalEmbeddingCount:0];
      if (v7)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v33 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v33))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[MACDMigration] Failed to rebuild VSKDB", buf, 2u);
          }
        }
      }

      objc_autoreleasePoolPop(v31);
      if (v7)
      {
        goto LABEL_68;
      }
    }

LABEL_63:
    v34 = VCPSignPostPersistentLog();
    v35 = VCPSignPostPersistentLog();
    v36 = os_signpost_id_generate(v35);

    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      qos_class_self();
      v37 = VCPMAQoSDescription();
      v38 = v37;
      v39 = [v37 UTF8String];
      *buf = 134349570;
      *v43 = v9;
      *&v43[8] = 2082;
      v44 = "Migration";
      v45 = 2082;
      v46 = v39;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_EVENT, v36, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x20u);
    }

    goto LABEL_67;
  }

  v7 = -128;
LABEL_69:

  return v7;
}

- (int)_updateAnalysisMetricsForPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [v3 mad_bumpFaceProcessingVersionIfNeededWithError:0];
  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v11 = 0;
        v6 = "[MACDMigration] Failed to bump face processing version";
        v7 = &v11;
LABEL_13:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, v6, v7, 2u);
      }
    }
  }

  else
  {
    v4 = [v3 mad_migrateVectorDatabaseIfNeededWithError:0];
    if (v4)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v5 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v5))
        {
          v10 = 0;
          v6 = "[MACDMigration] Failed to migrate vector database";
          v7 = &v10;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v4 = [v3 mad_updateAnalysisMetricsOnVersionUpdateWithError:0];
      if (v4)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v5 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v5))
          {
            v9 = 0;
            v6 = "[MACDMigration] Failed to update processing metrics";
            v7 = &v9;
            goto LABEL_13;
          }
        }
      }
    }
  }

  return v4;
}

- (int)_run
{
  v59 = +[NSDate now];
  v3 = +[VCPLogManager dateFormatter];
  v4 = [v3 stringFromDate:v59];
  [(NSMutableDictionary *)self->_migrationAnalytics setObject:v4 forKeyedSubscript:@"StartTimestamp"];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v5 = self->_photoLibraries;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (!v6)
  {
    goto LABEL_86;
  }

  v57 = v79;
  v67 = *v84;
  type = VCPLogToOSLogType[3];
  v58 = VCPLogToOSLogType[6];
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v84 != v67)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v83 + 1) + 8 * i);
      v9 = objc_autoreleasePoolPush();
      if ([(MADPhotosDatabaseMigrationProcessingTask *)self isCancelled])
      {
        v65 = -128;
        v10 = 1;
        goto LABEL_82;
      }

      if (![MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v8])
      {
        goto LABEL_76;
      }

      v66 = [v8 mad_migrationDirectory];
      v11 = [v8 mad_migrationStatusFilepath];
      if (v11)
      {
        v62 = [NSURL fileURLWithPath:v11 isDirectory:0];
        v64 = +[NSMutableDictionary dictionary];
        v63 = +[NSFileManager defaultManager];
        if (![v63 fileExistsAtPath:v66])
        {
          v89 = NSFilePosixPermissions;
          v90 = &off_100294740;
          v14 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
          v81 = 0;
          v15 = [v63 createDirectoryAtPath:v66 withIntermediateDirectories:1 attributes:v14 error:&v81];
          v13 = v81;

          if (v15)
          {
            goto LABEL_27;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412546;
            v92 = v66;
            v93 = 2112;
            v94 = v13;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Failed to create migration directory at %@ (%@); migration failed", buf, 0x16u);
          }

LABEL_25:
          v10 = 3;
          goto LABEL_75;
        }

        if ([v63 fileExistsAtPath:v11])
        {
          v82 = 0;
          v12 = [NSDictionary dictionaryWithContentsOfURL:v62 error:&v82];
          v13 = v82;
          if (v13)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412546;
              v92 = v11;
              v93 = 2112;
              v94 = v13;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Failed to read migration status file at %@ (%@), skipping restore", buf, 0x16u);
            }

            goto LABEL_25;
          }

          [v64 addEntriesFromDictionary:v12];
          v13 = v12;
LABEL_27:
        }

        v13 = [v64 objectForKeyedSubscript:{@"MigrationAttempts", v56, v57}];
        if ([v13 unsignedIntValue] <= 4)
        {
          [(NSMutableDictionary *)self->_migrationAnalytics setObject:v13 forKeyedSubscript:@"PreviousAttempts"];
          v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 unsignedIntValue] + 1);
          [v64 setObject:v16 forKeyedSubscript:@"MigrationAttempts"];

          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v58))
          {
            v17 = [v64 objectForKeyedSubscript:@"MigrationAttempts"];
            v18 = [v8 photoLibraryURL];
            *buf = 138412546;
            v92 = v17;
            v93 = 2112;
            v94 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v58, "[MACDMigration] Increasing migration attempts to %@ for photo library %@", buf, 0x16u);
          }

          v80 = 0;
          v19 = [v64 writeToURL:v62 error:&v80];
          v20 = v80;
          if (v19)
          {
            progressHandler = self->_progressHandler;
            completionHandler = self->_completionHandler;
            v78[0] = _NSConcreteStackBlock;
            v78[1] = 3221225472;
            v79[0] = sub_1000CE4DC;
            v79[1] = &unk_100283000;
            v79[2] = self;
            v60 = [MADPhotosLibraryRestoreTask taskWithPhotoLibrary:v8 progressHandler:progressHandler completionHandler:completionHandler cancelBlock:v78];
            if ([v60 run])
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
              {
                v23 = [v8 photoLibraryURL];
                *buf = 138412290;
                v92 = v23;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration] Failed to restore database for photo library %@", buf, 0xCu);
              }

              goto LABEL_72;
            }

            v29 = [(MADPhotosDatabaseMigrationProcessingTask *)self _migrateDatabaseForPhotoLibrary:v8];
            if (v29)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
              {
                v30 = [v8 photoLibraryURL];
                *buf = 138412546;
                v92 = v30;
                v93 = 1024;
                LODWORD(v94) = v29;
                v31 = v30;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration] Failed to migrate database for photo library %@ (%d)", buf, 0x12u);
              }

              goto LABEL_72;
            }

            [v64 setObject:&off_100294758 forKeyedSubscript:@"MigrationAttempts"];
            v33 = +[NSDate now];
            [v64 setObject:v33 forKeyedSubscript:@"LastMigrationTimestamp"];

            v77 = v20;
            LOBYTE(v33) = [v64 writeToURL:v62 error:&v77];
            v56 = v77;

            if ((v33 & 1) == 0)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
              {
                *buf = 138412546;
                v92 = v64;
                v93 = 2112;
                v94 = v56;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration] Failed to write migration status %@: %@", buf, 0x16u);
                v20 = v56;
              }

              else
              {
                v20 = v56;
              }

              goto LABEL_72;
            }

            v20 = v56;
LABEL_64:
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v58))
            {
              v34 = [v8 photoLibraryURL];
              *buf = 138412290;
              v92 = v34;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v58, "[MACDMigration] Migration completed for photo library %@", buf, 0xCu);
            }

            v10 = 0;
LABEL_74:

LABEL_75:
            if (v10)
            {
              goto LABEL_82;
            }

LABEL_76:
            v35 = [(MADPhotosDatabaseMigrationProcessingTask *)self _updateAnalysisMetricsForPhotoLibrary:v8, v56];
            if (v35)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
              {
                v36 = [v8 photoLibraryURL];
                *buf = 138412290;
                v92 = v36;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration] Failed to update analysis metrics for photo library %@", buf, 0xCu);
              }

              v10 = 1;
              v65 = v35;
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_82;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412546;
            v92 = v64;
            v93 = 2112;
            v94 = v20;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration] Failed to write migration status %@: %@", buf, 0x16u);
          }

LABEL_73:
          v10 = 3;
          goto LABEL_74;
        }

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v58))
        {
          v24 = [v8 photoLibraryURL];
          *buf = 138412290;
          v92 = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v58, "[MACDMigration] Reached max migration attempts, recreating database for photo library %@", buf, 0xCu);
        }

        v60 = +[MADPhotosDataStoreClient sharedClient];
        v25 = [v60 recreatePersistentStoreForPhotoLibrary:v8];
        if (v25)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            v26 = [v8 photoLibraryURL];
            *buf = 138412546;
            v92 = v26;
            v93 = 1024;
            LODWORD(v94) = v25;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration] Failed to recreate new database for photo library %@ (%d)", buf, 0x12u);
          }
        }

        else
        {
          v27 = [v60 setDatabaseVersion:+[MADPhotosDataStoreClient latestDataStoreVersion](MADPhotosDataStoreClient photoLibrary:{"latestDataStoreVersion"), v8}];
          if (!v27)
          {
            [v64 setObject:&off_100294758 forKeyedSubscript:@"MigrationAttempts"];
            v32 = +[NSDate now];
            [v64 setObject:v32 forKeyedSubscript:@"LastMigrationTimestamp"];

            v76 = 0;
            LOBYTE(v32) = [v64 writeToURL:v62 error:&v76];
            v20 = v76;
            if (v32)
            {

              goto LABEL_64;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412546;
              v92 = v64;
              v93 = 2112;
              v94 = v20;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration] Failed to write migration status %@: %@", buf, 0x16u);
            }

LABEL_72:

            goto LABEL_73;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            v28 = [v8 photoLibraryURL];
            *buf = 138412546;
            v92 = v28;
            v93 = 1024;
            LODWORD(v94) = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration] Failed to set database version for photo library %@ (%d)", buf, 0x12u);
          }
        }

        v20 = 0;
        goto LABEL_72;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MACDMigration] Unknown migration status filepath, skipping migration", buf, 2u);
      }

      v10 = 3;
LABEL_82:
      objc_autoreleasePoolPop(v9);
      if (v10 != 3 && v10)
      {
        goto LABEL_107;
      }
    }

    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v83 objects:v95 count:16];
  }

  while (v6);
LABEL_86:

  v37 = +[MADSystemDataStore systemDataStore];
  if ([objc_opt_class() shouldDeleteLegacyWhileMigrating])
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v38 = self->_photoLibraries;
    v39 = [(NSArray *)v38 countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (v39)
    {
      v40 = *v73;
      v41 = VCPLogToOSLogType[3];
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v73 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v72 + 1) + 8 * j);
          v44 = objc_autoreleasePoolPush();
          if ([VCPDatabaseManager removeLegacyDatabaseFilesForPhotoLibrary:v43]&& MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v41))
          {
            v45 = [v43 photoLibraryURL];
            *buf = 138412290;
            v92 = v45;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[MACDMigration] Failed to remove legacy database files for photo library %@", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v44);
        }

        v39 = [(NSArray *)v38 countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v39);
    }
  }

  [v59 timeIntervalSinceNow];
  v47 = [NSNumber numberWithDouble:-v46];
  [(NSMutableDictionary *)self->_migrationAnalytics setObject:v47 forKeyedSubscript:@"DurationOverall"];

  v5 = VCPCoreAnalyticsSessionEventName(259);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v48 = [(NSMutableDictionary *)self->_migrationAnalytics allKeys];
  v49 = [v48 countByEnumeratingWithState:&v68 objects:v87 count:16];
  if (v49)
  {
    v50 = *v69;
    do
    {
      for (k = 0; k != v49; k = k + 1)
      {
        if (*v69 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v52 = *(*(&v68 + 1) + 8 * k);
        v53 = +[VCPMADCoreAnalyticsManager sharedManager];
        v54 = [(NSMutableDictionary *)self->_migrationAnalytics objectForKeyedSubscript:v52];
        [v53 setValue:v54 forField:v52 andEvent:v5];
      }

      v49 = [v48 countByEnumeratingWithState:&v68 objects:v87 count:16];
    }

    while (v49);
  }

  v65 = 0;
LABEL_107:

  return v65;
}

- (int)run
{
  atomic_store(1u, &self->_started);
  v3 = [(MADPhotosDatabaseMigrationProcessingTask *)self _run];
  v4 = v3;
  if (v3 != -128)
  {
    if (v3)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v5 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v5))
        {
          v7[0] = 67109120;
          v7[1] = v4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MACDMigration] Failed during processing (%d)", v7, 8u);
        }
      }
    }
  }

  (*(self->_completionHandler + 2))();
  return v4;
}

@end