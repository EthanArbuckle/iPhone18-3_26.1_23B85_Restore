@interface VCPDatabaseReader
+ (id)databaseForPhotoLibrary:(id)library;
+ (id)databaseForPhotoLibraryURL:(id)l;
+ (id)databaseWithURL:(id)l;
+ (void)deprecatedExceptionForMethodName:(id)name replacedByMethodName:(id)methodName;
- (BOOL)exists;
- (BOOL)isAssetBlacklisted:(id)blacklisted blacklistDate:(id *)date;
- (VCPDatabaseReader)initWithDatabaseURL:(id)l;
- (VCPDatabaseReader)initWithPhotoLibrary:(id)library;
- (VCPDatabaseReader)initWithPhotoLibraryURL:(id)l;
- (id)blacklistedLocalIdentifiersFromAssets:(id)assets;
- (id)loadChangeTokens;
- (id)loadKeyValues;
- (id)loadProcessingStatus;
- (id)migration_loadKeyValues;
- (id)migration_loadMomentsScheduledAssets;
- (id)migration_queryAnalysesForAssets:(id)assets statsFlags:(unint64_t)flags withTypes:(id)types;
- (id)queryAnalysesForAssets:(id)assets withTypes:(id)types;
- (id)queryAnalysisForAsset:(id)asset;
- (id)queryAnalysisForAsset:(id)asset withTypes:(id)types;
- (id)queryAnalysisPropertiesForAssets:(id)assets;
- (id)queryAssetsAnalyzedSince:(id)since;
- (id)queryFailedProcessingStatusFromAssets:(id)assets forTaskID:(unint64_t)d;
- (id)queryLocalIdentifiersForTaskID:(unint64_t)d withStatus:(unint64_t)status;
- (int)_queryValue:(int64_t *)value forKey:(id)key;
- (int)countAssetsForTaskID:(unint64_t)d totalAssets:(unint64_t *)assets processedAssets:(unint64_t *)processedAssets;
- (int)executeDatabaseBlock:(id)block;
- (int)migration_queryProgressHistoryRecords:(id *)records sinceDate:(id)date;
- (int)migration_querySchedulingHistoryRecords:(id *)records startDate:(id)date endDate:(id)endDate;
- (int)openDatabase;
- (int)parseHeader:(sqlite3_stmt *)header startColumn:(int)column analysis:(id)analysis;
- (int)parseResults:(sqlite3_stmt *)results typeColumn:(int)column dataColumn:(int)dataColumn results:(id)a6;
- (int)queryHeaderForAsset:(id)asset analysis:(id *)analysis assetId:(int64_t *)id;
- (int)queryHeadersForAssets:(id)assets statsFlags:(unint64_t)flags analyses:(id)analyses idMap:(id)map;
- (int)queryProgressHistoryRecords:(id *)records sinceDate:(id)date;
- (int)queryResultsForAssetId:(int64_t)id analysis:(id)analysis;
- (int)queryResultsForAssetId:(int64_t)id withTypes:(id)types analysis:(id)analysis;
- (int)queryResultsForAssets:(id)assets withTypes:(id)types batchResults:(id)results;
- (int)querySchedulingHistoryRecords:(id *)records forActivityID:(unint64_t)d startDate:(id)date endDate:(id)endDate;
- (int)querySchedulingHistoryRecords:(id *)records startDate:(id)date endDate:(id)endDate;
- (int64_t)valueForKey:(id)key;
- (unint64_t)countForTaskID:(unint64_t)d minimumAttempts:(unint64_t)attempts;
- (unint64_t)countForTaskID:(unint64_t)d withProcessingStatus:(unint64_t)status;
- (void)dealloc;
- (void)openDatabase;
@end

@implementation VCPDatabaseReader

+ (void)deprecatedExceptionForMethodName:(id)name replacedByMethodName:(id)methodName
{
  nameCopy = name;
  methodNameCopy = methodName;
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"[VCPDatabaseReader %@] is deprecated. ", nameCopy];
  if (methodNameCopy)
  {
    [string appendFormat:@"Use [MAD[Change|Fetch]Request %@] instead.", methodNameCopy];
  }

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"DeprecatedMethodException" reason:string userInfo:0];
  objc_exception_throw(v8);
}

- (VCPDatabaseReader)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = VCPDatabaseReader;
  v5 = [(VCPDatabaseReader *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.mediaanalysis.sql", 0);
    sqlSerialQueue = v5->_sqlSerialQueue;
    v5->_sqlSerialQueue = v6;

    if (libraryCopy)
    {
      [libraryCopy vcp_mediaAnalysisDatabaseFilepath];
    }

    else
    {
      [MEMORY[0x1E69789B0] vcp_defaultMediaAnalysisDatabaseFilepath];
    }
    v8 = ;
    filepath = v5->_filepath;
    v5->_filepath = v8;

    v5->_database = 0;
    v10 = v5;
  }

  return v5;
}

- (VCPDatabaseReader)initWithPhotoLibraryURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = VCPDatabaseReader;
  v5 = [(VCPDatabaseReader *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.mediaanalysis.sql", 0);
    sqlSerialQueue = v5->_sqlSerialQueue;
    v5->_sqlSerialQueue = v6;

    if ([MEMORY[0x1E69789B0] isSystemPhotoLibraryURL:lCopy])
    {
      v8 = @"/var/mobile/Media/MediaAnalysis";
    }

    else
    {
      path = [lCopy path];
      v8 = [path stringByAppendingPathComponent:@"private/com.apple.mediaanalysisd/MediaAnalysis"];
    }

    v10 = [(__CFString *)v8 stringByAppendingPathComponent:@"mediaanalysis.db"];
    filepath = v5->_filepath;
    v5->_filepath = v10;

    v5->_database = 0;
    v12 = v5;
  }

  return v5;
}

- (VCPDatabaseReader)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = VCPDatabaseReader;
  v5 = [(VCPDatabaseReader *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.mediaanalysis.sql", 0);
    sqlSerialQueue = v5->_sqlSerialQueue;
    v5->_sqlSerialQueue = v6;

    absoluteString = [lCopy absoluteString];
    filepath = v5->_filepath;
    v5->_filepath = absoluteString;

    v5->_database = 0;
  }

  return v5;
}

+ (id)databaseForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];

  return v4;
}

+ (id)databaseForPhotoLibraryURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibraryURL:lCopy];

  return v4;
}

+ (id)databaseWithURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(objc_opt_class()) initWithDatabaseURL:lCopy];

  return v4;
}

- (void)dealloc
{
  sqlite3_close(self->_database);
  v3.receiver = self;
  v3.super_class = VCPDatabaseReader;
  [(VCPDatabaseReader *)&v3 dealloc];
}

- (BOOL)exists
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"exists" replacedByMethodName:0];
    return 0;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [defaultManager fileExistsAtPath:self->_filepath];
  }

  return v3;
}

- (int)openDatabase
{
  v10 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:self->_filepath];

  if (v4)
  {
    v5 = sqlite3_open([(NSString *)self->_filepath UTF8String], &self->_database);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9[0] = 67109120;
        v9[1] = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPDatabaseReader] Failed to open database: %d", v9, 8u);
      }
    }

    else
    {
      result = sqlite3_busy_handler(self->_database, busyHandler, 0);
      if (!result)
      {
        return result;
      }

      v8 = result;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        [(VCPDatabaseReader *)v8 openDatabase];
      }
    }

    self->_database = 0;
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPDatabaseReader] No database file exists", v9, 2u);
  }

  return -23;
}

- (int)parseHeader:(sqlite3_stmt *)header startColumn:(int)column analysis:(id)analysis
{
  analysisCopy = analysis;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(header, column)}];
  [analysisCopy setObject:v8 forKeyedSubscript:@"version"];

  if (sqlite3_column_type(header, column + 1) == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(header, column + 1)}];
  }

  [analysisCopy setObject:v9 forKeyedSubscript:@"dateModified"];

  if (sqlite3_column_type(header, column + 2) == 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(header, column + 2)}];
  }

  [analysisCopy setObject:v10 forKeyedSubscript:@"dateAnalyzed"];

  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(header, column + 3)}];
  [analysisCopy setObject:v11 forKeyedSubscript:@"performedAnalysisTypes"];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(header, column + 4)}];
  [analysisCopy setObject:v12 forKeyedSubscript:@"flags"];

  if (sqlite3_column_double(header, column + 5) != -1.0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [analysisCopy setObject:v13 forKeyedSubscript:@"quality"];
  }

  if (sqlite3_column_type(header, column + 6) == 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(header, column + 6)}];
  }

  if (sqlite3_column_type(header, column + 7) == 5)
  {
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(header, column + 7)}];
  }

  v16 = [VCPFingerprint fingerprintWithMaster:v14 adjusted:v15];
  [analysisCopy vcp_setFingerprint:v16];

  if ([objc_opt_class() shouldQueryInternalFields])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(header, column + 8)}];
    [analysisCopy setObject:v17 forKeyedSubscript:@"statsFlags"];
  }

  if ([analysisCopy vcp_version] < 3 && (objc_msgSend(analysisCopy, "vcp_types") & 4) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(analysisCopy, "vcp_types") | 8}];
    [analysisCopy setObject:v18 forKeyedSubscript:@"performedAnalysisTypes"];
  }

  return 0;
}

- (int)parseResults:(sqlite3_stmt *)results typeColumn:(int)column dataColumn:(int)dataColumn results:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = sqlite3_column_int(results, column);
  if (sqlite3_column_type(results, dataColumn) == 5 || (v11 = MEMORY[0x1E695DEF0], v12 = sqlite3_column_blob(results, dataColumn), [v11 dataWithBytesNoCopy:v12 length:sqlite3_column_bytes(results freeWhenDone:{dataColumn), 0}], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_10:
    v19 = -18;
    goto LABEL_11;
  }

  v21 = 0;
  v14 = [MEMORY[0x1E696AE40] propertyListWithData:v13 options:0 format:0 error:&v21];
  v15 = v21;
  v16 = v15;
  if (!v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [v16 description];
      *buf = 67109378;
      dataColumnCopy = dataColumn;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to extract NSArray from column %d (%@)", buf, 0x12u);
    }

    goto LABEL_10;
  }

  v17 = MediaAnalysisResultsTypeToKey(v10);
  if (v17)
  {
    [v9 setObject:v14 forKey:v17];
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    dataColumnCopy = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Unknown result key for result type %u", buf, 8u);
  }

  v19 = 0;
LABEL_11:

  return v19;
}

- (int)queryHeaderForAsset:(id)asset analysis:(id *)analysis assetId:(int64_t *)id
{
  v30 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v25 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v26 = 1024;
    v27 = 249;
    v28 = 2080;
    v29 = "[VCPDatabaseReader queryHeaderForAsset:analysis:assetId:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  ppStmt = 0;
  v9 = [MEMORY[0x1E696AD60] stringWithString:{@"SELECT id, version, dateModified, dateAnalyzed, analysisTypes, flags, quality, masterFingerprint, adjustedFingerprint"}];
  if ([objc_opt_class() shouldQueryInternalFields])
  {
    [v9 appendString:{@", statsFlags"}];
  }

  [v9 appendString:@" FROM Assets WHERE localIdentifier=(?);"];
  database = self->_database;
  v11 = v9;
  v12 = sqlite3_prepare_v2(database, [v9 UTF8String], -1, &ppStmt, 0);
  if (!v12)
  {
    v13 = ppStmt;
    v14 = assetCopy;
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      v17 = sqlite3_bind_text(v13, 1, [v15 UTF8String], -1, 0);
    }

    else
    {
      v17 = sqlite3_bind_null(v13, 1);
    }

    v12 = v17;

    if (!v12)
    {
      v18 = sqlite3_expanded_sql(ppStmt);
      if (v18)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v25 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
          v26 = 1024;
          v27 = 264;
          v28 = 2080;
          v29 = v18;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v18);
      }

      v19 = sqlite3_step(ppStmt);
      if (v19 == 100)
      {
        *id = sqlite3_column_int(ppStmt, 0);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v21 = dictionary;
        *analysis = dictionary;
        v12 = [(VCPDatabaseReader *)self parseHeader:ppStmt startColumn:1 analysis:dictionary];
        if (v12)
        {
          goto LABEL_22;
        }

        v19 = sqlite3_step(ppStmt);
      }

      if (v19 == 101)
      {
        v12 = 0;
      }

      else
      {
        v12 = v19;
      }
    }
  }

LABEL_22:
  sqlite3_finalize(ppStmt);

  return v12;
}

- (int)queryResultsForAssetId:(int64_t)id analysis:(id)analysis
{
  v19 = *MEMORY[0x1E69E9840];
  analysisCopy = analysis;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v14 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v15 = 1024;
    v16 = 285;
    v17 = 2080;
    v18 = "[VCPDatabaseReader queryResultsForAssetId:analysis:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  ppStmt = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = sqlite3_prepare_v2(self->_database, "SELECT resultsType, results FROM Results WHERE assetId=(?);", -1, &ppStmt, 0);
  if (!v8)
  {
    v8 = sqlite3_bind_int64(ppStmt, 1, id);
    if (!v8)
    {
      v10 = sqlite3_expanded_sql(ppStmt);
      if (v10)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v14 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
          v15 = 1024;
          v16 = 294;
          v17 = 2080;
          v18 = v10;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v10);
      }

      while (1)
      {
        v11 = sqlite3_step(ppStmt);
        if (v11 != 100)
        {
          break;
        }

        v8 = [(VCPDatabaseReader *)self parseResults:ppStmt typeColumn:0 dataColumn:1 results:dictionary];
        if (v8)
        {
          goto LABEL_6;
        }
      }

      if (v11 == 101)
      {
        if ([dictionary count])
        {
          [analysisCopy setObject:dictionary forKey:@"metadataRanges"];
        }

        v8 = 0;
      }

      else
      {
        v8 = -18;
      }
    }
  }

LABEL_6:
  sqlite3_finalize(ppStmt);

  return v8;
}

- (int)queryResultsForAssetId:(int64_t)id withTypes:(id)types analysis:(id)analysis
{
  v38 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  analysisCopy = analysis;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v33 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v34 = 1024;
    v35 = 318;
    v36 = 2080;
    v37 = "[VCPDatabaseReader queryResultsForAssetId:withTypes:analysis:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if (typesCopy && ![typesCopy count])
  {
    v15 = 0;
  }

  else
  {
    ppStmt = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"SELECT resultsType, results FROM Results WHERE assetId=(?");
    if ([typesCopy count])
    {
      [v11 appendString:@") AND resultsType IN (?"];
      for (i = 1; i < [typesCopy count]; ++i)
      {
        [v11 appendString:{@", ?"}];
      }
    }

    [v11 appendString:@";"]);
    database = self->_database;
    v14 = v11;
    v15 = sqlite3_prepare_v2(database, [v11 UTF8String], -1, &ppStmt, 0);
    if (!v15)
    {
      v15 = sqlite3_bind_int64(ppStmt, 1, id);
      if (!v15)
      {
        v25 = analysisCopy;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v16 = typesCopy;
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v17)
        {
          v18 = *v27;
          v19 = 2;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v16);
              }

              unsignedIntegerValue = [*(*(&v26 + 1) + 8 * j) unsignedIntegerValue];
              v15 = sqlite3_bind_int64(ppStmt, v19, unsignedIntegerValue);
              if (v15)
              {

                analysisCopy = v25;
                goto LABEL_36;
              }

              ++v19;
            }

            v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        analysisCopy = v25;
        v22 = sqlite3_expanded_sql(ppStmt);
        if (v22)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v33 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
            v34 = 1024;
            v35 = 343;
            v36 = 2080;
            v37 = v22;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v22);
        }

        while (1)
        {
          v23 = sqlite3_step(ppStmt);
          if (v23 != 100)
          {
            break;
          }

          v15 = [(VCPDatabaseReader *)self parseResults:ppStmt typeColumn:0 dataColumn:1 results:dictionary];
          if (v15)
          {
            goto LABEL_36;
          }
        }

        if (v23 && v23 != 101)
        {
          v15 = -18;
        }

        else
        {
          if ([dictionary count])
          {
            [v25 setObject:dictionary forKey:@"metadataRanges"];
          }

          v15 = 0;
        }
      }
    }

LABEL_36:
    sqlite3_finalize(ppStmt);
  }

  return v15;
}

- (int)queryHeadersForAssets:(id)assets statsFlags:(unint64_t)flags analyses:(id)analyses idMap:(id)map
{
  v50 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  analysesCopy = analyses;
  mapCopy = map;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v46 = 1024;
    v47 = 368;
    v48 = 2080;
    v49 = "[VCPDatabaseReader queryHeadersForAssets:statsFlags:analyses:idMap:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  *buf = 0;
  v11 = [MEMORY[0x1E696AD60] stringWithString:{@"SELECT id, localIdentifier, version, dateModified, dateAnalyzed, analysisTypes, flags, quality, masterFingerprint, adjustedFingerprint", analysesCopy}];
  if ([objc_opt_class() shouldQueryInternalFields])
  {
    [v11 appendString:{@", statsFlags"}];
  }

  [v11 appendString:@" FROM Assets"];
  if (flags)
  {
    [v11 appendString:@" WHERE (statsFlags & (?))"];
  }

  if (assetsCopy)
  {
    if (flags)
    {
      v12 = CFSTR(" AND localIdentifier IN (?");
    }

    else
    {
      v12 = CFSTR(" WHERE localIdentifier IN (?");
    }

    [v11 appendString:v12];
    v13 = 1;
    v14 = @";");
    while (v13 < [assetsCopy count])
    {
      [v11 appendString:{@", ?"}];
      ++v13;
    }
  }

  else
  {
    v14 = @";";
  }

  [v11 appendString:v14];
  database = self->_database;
  v16 = v11;
  v17 = sqlite3_prepare_v2(database, [v11 UTF8String], -1, buf, 0);
  if (!v17)
  {
    if (flags)
    {
      v17 = sqlite3_bind_int64(*buf, 1, flags);
      if (v17)
      {
        goto LABEL_17;
      }

      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = assetsCopy;
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v21)
    {
      v22 = *v41;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *buf;
          v25 = *(*(&v40 + 1) + 8 * i);
          v26 = v25;
          if (v25)
          {
            v27 = v25;
            v28 = sqlite3_bind_text(v24, v19, [v26 UTF8String], -1, 0);
          }

          else
          {
            v28 = sqlite3_bind_null(v24, v19);
          }

          v17 = v28;

          if (v17)
          {

            goto LABEL_17;
          }

          ++v19;
        }

        v21 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v29 = sqlite3_step(*buf);
    if (v29 == 100)
    {
      while (1)
      {
        v30 = sqlite3_column_int(*buf, 0);
        v31 = *buf;
        if (sqlite3_column_type(*buf, 1) == 5)
        {
          v32 = 0;
        }

        else
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v31, 1)}];
        }

        v33 = v30;
        v34 = [MEMORY[0x1E696AD98] numberWithLongLong:v30];
        [mapCopy setObject:v32 forKey:v34];

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v17 = [(VCPDatabaseReader *)self parseHeader:*buf startColumn:2 analysis:dictionary];
        if (v17)
        {
          break;
        }

        v36 = [MEMORY[0x1E696AD98] numberWithLongLong:v33];
        [v38 setObject:dictionary forKey:v36];

        v29 = sqlite3_step(*buf);
        if (v29 != 100)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      if (v29 == 101)
      {
        v17 = 0;
      }

      else
      {
        v17 = v29;
      }
    }
  }

LABEL_17:
  sqlite3_finalize(*buf);

  return v17;
}

- (int)queryResultsForAssets:(id)assets withTypes:(id)types batchResults:(id)results
{
  v61 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  typesCopy = types;
  resultsCopy = results;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v56 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v57 = 1024;
    v58 = 436;
    v59 = 2080;
    v60 = "[VCPDatabaseReader queryResultsForAssets:withTypes:batchResults:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if (typesCopy && ![typesCopy count])
  {
    v14 = 0;
  }

  else
  {
    ppStmt = 0;
    v9 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"SELECT assetId, resultsType, results FROM Results WHERE assetId IN (?");
    for (i = 1; i < [assetsCopy count]; ++i)
    {
      [v9 appendString:{@", ?"}];
    }

    if ([typesCopy count])
    {
      [v9 appendString:@") AND resultsType IN (?"];
      for (j = 1; j < [typesCopy count]; ++j)
      {
        [v9 appendString:{@", ?"}];
      }
    }

    [v9 appendString:@";"]);
    database = self->_database;
    v13 = v9;
    v14 = sqlite3_prepare_v2(database, [v9 UTF8String], -1, &ppStmt, 0);
    if (!v14)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v15 = assetsCopy;
      v16 = [v15 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v16)
      {
        v17 = *v48;
        v18 = 1;
        while (2)
        {
          for (k = 0; k != v16; ++k)
          {
            if (*v48 != v17)
            {
              objc_enumerationMutation(v15);
            }

            unsignedIntegerValue = [*(*(&v47 + 1) + 8 * k) unsignedIntegerValue];
            v14 = sqlite3_bind_int64(ppStmt, v18, unsignedIntegerValue);
            if (v14)
            {

              goto LABEL_59;
            }

            ++v18;
          }

          v16 = [v15 countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 1;
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v21 = typesCopy;
      v22 = [v21 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v22)
      {
        v23 = *v44;
        while (2)
        {
          for (m = 0; m != v22; ++m)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(v21);
            }

            unsignedIntegerValue2 = [*(*(&v43 + 1) + 8 * m) unsignedIntegerValue];
            v14 = sqlite3_bind_int64(ppStmt, v18, unsignedIntegerValue2);
            if (v14)
            {

              goto LABEL_59;
            }

            ++v18;
          }

          v22 = [v21 countByEnumeratingWithState:&v43 objects:v53 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v26 = sqlite3_expanded_sql(ppStmt);
      if (v26)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v56 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
          v57 = 1024;
          v58 = 470;
          v59 = 2080;
          v60 = v26;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v26);
      }

      v36 = sqlite3_step(ppStmt);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v27 = v15;
      v28 = [v27 countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v28)
      {
        v29 = *v40;
        do
        {
          for (n = 0; n != v28; ++n)
          {
            if (*v40 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v39 + 1) + 8 * n);
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            [resultsCopy setObject:dictionary forKeyedSubscript:v31];
          }

          v28 = [v27 countByEnumeratingWithState:&v39 objects:v52 count:16];
        }

        while (v28);
      }

      while (1)
      {

        if (v36 != 100)
        {
          break;
        }

        v33 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int(ppStmt, 0)}];
        v27 = [resultsCopy objectForKeyedSubscript:v33];

        if (!v27)
        {
          v14 = -18;
          goto LABEL_59;
        }

        v14 = [(VCPDatabaseReader *)self parseResults:ppStmt typeColumn:1 dataColumn:2 results:v27];
        if (v14)
        {

          goto LABEL_59;
        }

        v36 = sqlite3_step(ppStmt);
      }

      if (v36 == 101)
      {
        v34 = 0;
      }

      else
      {
        v34 = -18;
      }

      if (v36)
      {
        v14 = v34;
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_59:
    sqlite3_finalize(ppStmt);
  }

  return v14;
}

- (int)executeDatabaseBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  sqlSerialQueue = self->_sqlSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VCPDatabaseReader_executeDatabaseBlock___block_invoke;
  block[3] = &unk_1E834E170;
  v9 = blockCopy;
  v10 = &v11;
  block[4] = self;
  v6 = blockCopy;
  dispatch_sync(sqlSerialQueue, block);
  LODWORD(sqlSerialQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return sqlSerialQueue;
}

void __42__VCPDatabaseReader_executeDatabaseBlock___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))();
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v2 = *(*(*(a1 + 48) + 8) + 24);
        v5 = 67109120;
        v6 = v2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPDatabaseReader] Database already opened, failed to execute query block: %d", &v5, 8u);
      }
    }
  }

  v3 = *(a1 + 32);
  if (!v3[3] || *(*(*(a1 + 48) + 8) + 24))
  {
    [v3 closeDatabase];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) openDatabase];
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))();
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v4 = *(*(*(a1 + 48) + 8) + 24);
          v5 = 67109120;
          v6 = v4;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPDatabaseReader] Failed to execute query block: %d", &v5, 8u);
        }
      }
    }
  }
}

- (id)loadChangeTokens
{
  v15 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v11 = 1024;
    v12 = 535;
    v13 = 2080;
    v14 = "[VCPDatabaseReader loadChangeTokens]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__VCPDatabaseReader_loadChangeTokens__block_invoke;
  v7[3] = &unk_1E834E198;
  v7[4] = self;
  v4 = array;
  v8 = v4;
  if ([(VCPDatabaseReader *)self executeDatabaseBlock:v7])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

uint64_t __37__VCPDatabaseReader_loadChangeTokens__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT tokenID, tokenType, tokenData, date, version FROM ChangeTokens;", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_25;
  }

  v3 = sqlite3_expanded_sql(ppStmt);
  if (v3)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v19 = 1024;
      v20 = 543;
      v21 = 2080;
      v22 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v3);
  }

  v2 = sqlite3_step(ppStmt);
  while (v2 == 100)
  {
    v4 = sqlite3_column_int64(ppStmt, 0);
    v5 = sqlite3_column_int64(ppStmt, 1);
    v6 = ppStmt;
    if (sqlite3_column_type(ppStmt, 2) == 5)
    {
      v7 = 0;
    }

    else
    {
      v8 = MEMORY[0x1E695DEF0];
      v9 = sqlite3_column_blob(v6, 2);
      v7 = [v8 dataWithBytesNoCopy:v9 length:sqlite3_column_bytes(v6 freeWhenDone:{2), 0}];
    }

    v10 = ppStmt;
    if (sqlite3_column_type(ppStmt, 3) == 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v10, 3)}];
    }

    v12 = sqlite3_column_int(ppStmt, 4);
    v13 = *(a1 + 40);
    v14 = [MADChangeTokenEntry entryWithTokenID:v4 tokenType:v5 tokenData:v7 date:v11 version:v12];
    [v13 addObject:v14];

    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_25:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load ChangeToken", buf, 2u);
    }
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

- (BOOL)isAssetBlacklisted:(id)blacklisted blacklistDate:(id *)date
{
  v14 = *MEMORY[0x1E69E9840];
  blacklistedCopy = blacklisted;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"isAssetBlacklisted:blacklistDate:" replacedByMethodName:0];
    v7 = 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 579;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader isAssetBlacklisted:blacklistDate:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__VCPDatabaseReader_isAssetBlacklisted_blacklistDate___block_invoke;
    v9[3] = &unk_1E834E1C0;
    v9[4] = self;
    v11 = buf;
    dateCopy = date;
    v10 = blacklistedCopy;
    [(VCPDatabaseReader *)self executeDatabaseBlock:v9];
    v7 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  return v7 & 1;
}

uint64_t __54__VCPDatabaseReader_isAssetBlacklisted_blacklistDate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT date FROM Blacklist WHERE localIdentifier=(?) AND count>=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = sqlite3_bind_text(v3, 1, [v5 UTF8String], -1, 0);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v2 = sqlite3_bind_int(ppStmt, 2, 2);
      if (!v2)
      {
        v8 = sqlite3_expanded_sql(ppStmt);
        if (v8)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v14 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
            v15 = 1024;
            v16 = 589;
            v17 = 2080;
            v18 = v8;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v8);
        }

        v9 = sqlite3_step(ppStmt);
        if (v9 == 100)
        {
          if (*(a1 + 56))
          {
            **(a1 + 56) = sqlite3_column_nsdate(ppStmt, 0);
          }

          *(*(*(a1 + 48) + 8) + 24) = 1;
          v9 = sqlite3_step(ppStmt);
        }

        if (v9 == 101)
        {
          sqlite3_finalize(ppStmt);
          return 0;
        }

        v2 = 4294967278;
      }
    }
  }

  sqlite3_finalize(ppStmt);
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 40);
    *buf = 138412290;
    v14 = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Error querying blacklist status for %@", buf, 0xCu);
  }

  return v2;
}

- (id)blacklistedLocalIdentifiersFromAssets:(id)assets
{
  v14 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"blacklistedLocalIdentifiersFromAssets:" replacedByMethodName:0];
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 617;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader blacklistedLocalIdentifiersFromAssets:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    if ([assetsCopy count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__29;
      v12 = __Block_byref_object_dispose__29;
      v13 = [MEMORY[0x1E695DFA8] set];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __59__VCPDatabaseReader_blacklistedLocalIdentifiersFromAssets___block_invoke;
      v7[3] = &unk_1E834E1E8;
      v8 = assetsCopy;
      selfCopy = self;
      v10 = buf;
      [(VCPDatabaseReader *)self executeDatabaseBlock:v7];
      v5 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t __59__VCPDatabaseReader_blacklistedLocalIdentifiersFromAssets___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"SELECT localIdentifier FROM Blacklist WHERE count>=(?) AND localIdentifier IN (?");
  for (i = 1; i < [*(a1 + 32) count]; ++i)
  {
    [v2 appendString:{@", ?"}];
  }

  [v2 appendString:@";"]);
  ppStmt = 0;
  v4 = sqlite3_prepare_v2(*(*(a1 + 40) + 24), [v2 UTF8String], -1, &ppStmt, 0);
  if (!v4)
  {
    v4 = sqlite3_bind_int(ppStmt, 1, 2);
    if (!v4)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = *(a1 + 32);
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v34 count:16];
      if (v6)
      {
        v7 = *v24;
        v8 = 2;
        while (2)
        {
          for (j = 0; j != v6; ++j)
          {
            if (*v24 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v10 = ppStmt;
            v11 = [*(*(&v23 + 1) + 8 * j) localIdentifier];
            v12 = v11;
            if (v11)
            {
              v13 = v11;
              v14 = sqlite3_bind_text(v10, v8, [v12 UTF8String], -1, 0);
            }

            else
            {
              v14 = sqlite3_bind_null(v10, v8);
            }

            v4 = v14;

            if (v4)
            {

              goto LABEL_32;
            }

            ++v8;
          }

          v6 = [v5 countByEnumeratingWithState:&v23 objects:v34 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v15 = sqlite3_expanded_sql(ppStmt);
      if (v15)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v29 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
          v30 = 1024;
          v31 = 637;
          v32 = 2080;
          v33 = v15;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v15);
      }

      for (k = sqlite3_step(ppStmt); k == 100; k = sqlite3_step(ppStmt))
      {
        v17 = *(*(*(a1 + 48) + 8) + 40);
        v18 = ppStmt;
        if (sqlite3_column_type(ppStmt, 0) == 5)
        {
          v19 = 0;
        }

        else
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v18, 0)}];
        }

        [v17 addObject:{v19, v23}];
      }

      if (k == 101)
      {
        v4 = 0;
      }

      else
      {
        v4 = 4294967278;
      }
    }
  }

LABEL_32:
  sqlite3_finalize(ppStmt);
  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Failed to query blacklisted assets", buf, 2u);
    }

    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;
  }

  return v4;
}

- (id)queryAnalysisForAsset:(id)asset
{
  v13 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAnalysisForAsset:" replacedByMethodName:@"fetchAnalysisWithLocalIdentifier:predicate:"];
    v5 = 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 667;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader queryAnalysisForAsset:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__29;
    v11 = __Block_byref_object_dispose__29;
    v12 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__VCPDatabaseReader_queryAnalysisForAsset___block_invoke;
    v7[3] = &unk_1E834E1E8;
    v7[4] = self;
    v8 = assetCopy;
    v9 = buf;
    [(VCPDatabaseReader *)self executeDatabaseBlock:v7];
    v5 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  return v5;
}

uint64_t __43__VCPDatabaseReader_queryAnalysisForAsset___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v11 = 0;
  v5 = [v2 queryHeaderForAsset:v3 analysis:&obj assetId:&v11];
  objc_storeStrong((v4 + 40), obj);
  if (!v5)
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      return 0;
    }

    v5 = [*(a1 + 32) queryResultsForAssetId:v11 analysis:?];
    if (!v5)
    {
      return v5;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 40);
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Failed to query asset %@", buf, 0xCu);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  return v5;
}

- (id)queryAnalysisPropertiesForAssets:(id)assets
{
  v13 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAnalysisPropertiesForAssets:" replacedByMethodName:@"fetchAnalysisWithLocalIdentifier:predicate:"];
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 694;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader queryAnalysisPropertiesForAssets:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    if ([assetsCopy count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__29;
      v11 = __Block_byref_object_dispose__29;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __54__VCPDatabaseReader_queryAnalysisPropertiesForAssets___block_invoke;
      v7[3] = &unk_1E834E1E8;
      v7[4] = self;
      v8 = assetsCopy;
      v9 = buf;
      [(VCPDatabaseReader *)self executeDatabaseBlock:v7];
      v5 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t __54__VCPDatabaseReader_queryAnalysisPropertiesForAssets___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = [MEMORY[0x1E696AD60] stringWithString:{@"SELECT id, localIdentifier, version, dateModified, dateAnalyzed, analysisTypes, flags, quality, masterFingerprint, adjustedFingerprint"}];
  if ([objc_opt_class() shouldQueryInternalFields])
  {
    [v2 appendString:{@", statsFlags"}];
  }

  objc_msgSend(v2, "appendString:", @" FROM Assets WHERE localIdentifier IN (?");
  for (i = 1; i < [*(a1 + 40) count]; ++i)
  {
    [v2 appendString:{@", ?"}];
  }

  [v2 appendString:@";"]);
  v4 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), [v2 UTF8String], -1, &ppStmt, 0);
  if (!v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v32 count:16];
    if (v6)
    {
      v7 = *v22;
      v8 = 1;
LABEL_9:
      v9 = 0;
      while (1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = ppStmt;
        v11 = *(*(&v21 + 1) + 8 * v9);
        v12 = v11;
        if (v11)
        {
          v13 = v11;
          v14 = sqlite3_bind_text(v10, v8, [v12 UTF8String], -1, 0);
        }

        else
        {
          v14 = sqlite3_bind_null(v10, v8);
        }

        v4 = v14;

        if (v4)
        {
          goto LABEL_32;
        }

        ++v9;
        ++v8;
        if (v6 == v9)
        {
          v6 = [v5 countByEnumeratingWithState:&v21 objects:v32 count:16];
          if (v6)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    v15 = sqlite3_expanded_sql(ppStmt);
    if (v15)
    {
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v27 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
        v28 = 1024;
        v29 = 724;
        v30 = 2080;
        v31 = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v15);
    }

    v16 = sqlite3_step(ppStmt);
    if (v16 == 100)
    {
      while (1)
      {
        v5 = [MEMORY[0x1E695DF90] dictionary];
        v4 = [*(a1 + 32) parseHeader:ppStmt startColumn:2 analysis:v5];
        if (v4)
        {
          break;
        }

        v17 = *(*(*(a1 + 48) + 8) + 40);
        v18 = ppStmt;
        if (sqlite3_column_type(ppStmt, 1) == 5)
        {
          v19 = 0;
        }

        else
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v18, 1)}];
        }

        [v17 setObject:v5 forKey:v19];

        v16 = sqlite3_step(ppStmt);
        if (v16 != 100)
        {
          goto LABEL_29;
        }
      }

LABEL_32:

      goto LABEL_33;
    }

LABEL_29:
    if (v16 == 101)
    {
      v4 = 0;
    }

    else
    {
      v4 = v16;
    }
  }

LABEL_33:
  sqlite3_finalize(ppStmt);

  return v4;
}

- (id)queryAnalysisForAsset:(id)asset withTypes:(id)types
{
  v17 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  typesCopy = types;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAnalysisForAsset:withTypes:" replacedByMethodName:@"fetchAnalysisWithLocalIdentifier:predicate:resultTypes:"];
    v8 = 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 753;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader queryAnalysisForAsset:withTypes:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__29;
    v15 = __Block_byref_object_dispose__29;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__VCPDatabaseReader_queryAnalysisForAsset_withTypes___block_invoke;
    v10[3] = &unk_1E834E210;
    v10[4] = self;
    v11 = assetCopy;
    v13 = buf;
    v12 = typesCopy;
    [(VCPDatabaseReader *)self executeDatabaseBlock:v10];
    v8 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  return v8;
}

uint64_t __53__VCPDatabaseReader_queryAnalysisForAsset_withTypes___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v13 = 0;
  v5 = [v2 queryHeaderForAsset:v3 analysis:&obj assetId:&v13];
  objc_storeStrong((v4 + 40), obj);
  if (!v5)
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      return 0;
    }

    if (![*(a1 + 48) count])
    {
      return 0;
    }

    v9 = [*(a1 + 48) mutableCopy];
    v10 = MediaAnalysisResultsTypesForAnalysisTypes([*(*(*(a1 + 56) + 8) + 40) vcp_types]);
    [v9 intersectSet:v10];
    v5 = [*(a1 + 32) queryResultsForAssetId:v13 withTypes:v9 analysis:*(*(*(a1 + 56) + 8) + 40)];

    if (!v5)
    {
      return 0;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 40);
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Failed to query asset %@", buf, 0xCu);
  }

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  return v5;
}

- (id)queryAnalysesForAssets:(id)assets withTypes:(id)types
{
  v17 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  typesCopy = types;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAnalysesForAssets:withTypes:" replacedByMethodName:@"fetchAnalysisWithLocalIdentifier:predicate:resultTypes:"];
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 785;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader queryAnalysesForAssets:withTypes:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    if ([assetsCopy count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__29;
      v15 = __Block_byref_object_dispose__29;
      v16 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__VCPDatabaseReader_queryAnalysesForAssets_withTypes___block_invoke;
      v10[3] = &unk_1E834E238;
      v10[4] = self;
      v11 = assetsCopy;
      v12 = typesCopy;
      v13 = buf;
      [(VCPDatabaseReader *)self executeDatabaseBlock:v10];
      v8 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

uint64_t __54__VCPDatabaseReader_queryAnalysesForAssets_withTypes___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = [MEMORY[0x1E695DF90] dictionary];
  v1 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) queryHeadersForAssets:*(a1 + 40) statsFlags:0 analyses:v26 idMap:v1];
  if (v3 || [v26 count] && ((v6 = *(a1 + 48)) == 0 || objc_msgSend(v6, "count")) && (v7 = *(a1 + 32), objc_msgSend(v26, "allKeys"), v8 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v7, "queryResultsForAssets:withTypes:batchResults:", v8, *(a1 + 48), v2), v8, v3))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] queryAnalysesForAssets Failed", buf, 2u);
    }

    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [v26 allKeys];
    v12 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [MEMORY[0x1E695DF90] dictionary];
          v17 = [v26 objectForKeyedSubscript:v15];
          [v16 addEntriesFromDictionary:v17];

          v18 = [v2 objectForKeyedSubscript:v15];
          LOBYTE(v17) = v18 == 0;

          if ((v17 & 1) == 0)
          {
            v19 = [v2 objectForKeyedSubscript:v15];
            [v16 setObject:v19 forKey:@"metadataRanges"];
          }

          v20 = [v1 objectForKeyedSubscript:v15];
          v21 = v20 == 0;

          if (!v21)
          {
            v22 = *(*(*(a1 + 56) + 8) + 40);
            v23 = [v1 objectForKeyedSubscript:v15];
            [v22 setObject:v16 forKey:v23];
          }
        }

        v12 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v3 = 0;
  }

  return v3;
}

- (id)migration_queryAnalysesForAssets:(id)assets statsFlags:(unint64_t)flags withTypes:(id)types
{
  v22 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  typesCopy = types;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    *&buf[12] = 1024;
    *&buf[14] = 836;
    *&buf[18] = 2080;
    *&buf[20] = "[VCPDatabaseReader migration_queryAnalysesForAssets:statsFlags:withTypes:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__29;
  v20 = __Block_byref_object_dispose__29;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__VCPDatabaseReader_migration_queryAnalysesForAssets_statsFlags_withTypes___block_invoke;
  v14[3] = &unk_1E834E260;
  v14[4] = self;
  v10 = assetsCopy;
  v15 = v10;
  flagsCopy = flags;
  v11 = typesCopy;
  v16 = v11;
  v17 = buf;
  [(VCPDatabaseReader *)self executeDatabaseBlock:v14];
  v12 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v12;
}

uint64_t __75__VCPDatabaseReader_migration_queryAnalysesForAssets_statsFlags_withTypes___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = [MEMORY[0x1E695DF90] dictionary];
  v1 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) queryHeadersForAssets:*(a1 + 40) statsFlags:*(a1 + 64) analyses:v26 idMap:v1];
  if (v3 || [v26 count] && ((v6 = *(a1 + 48)) == 0 || objc_msgSend(v6, "count")) && (v7 = *(a1 + 32), objc_msgSend(v26, "allKeys"), v8 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v7, "queryResultsForAssets:withTypes:batchResults:", v8, *(a1 + 48), v2), v8, v3))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] queryAnalysesForAssets Failed", buf, 2u);
    }

    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [v26 allKeys];
    v12 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [MEMORY[0x1E695DF90] dictionary];
          v17 = [v26 objectForKeyedSubscript:v15];
          [v16 addEntriesFromDictionary:v17];

          v18 = [v2 objectForKeyedSubscript:v15];
          LOBYTE(v17) = v18 == 0;

          if ((v17 & 1) == 0)
          {
            v19 = [v2 objectForKeyedSubscript:v15];
            [v16 setObject:v19 forKey:@"metadataRanges"];
          }

          v20 = [v1 objectForKeyedSubscript:v15];
          v21 = v20 == 0;

          if (!v21)
          {
            v22 = *(*(*(a1 + 56) + 8) + 40);
            v23 = [v1 objectForKeyedSubscript:v15];
            [v22 setObject:v16 forKey:v23];
          }
        }

        v12 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v3 = 0;
  }

  return v3;
}

- (id)queryAssetsAnalyzedSince:(id)since
{
  v13 = *MEMORY[0x1E69E9840];
  sinceCopy = since;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAssetsAnalyzedSince:" replacedByMethodName:@"fetchAnalysesWithLocalIdentifiers:predicate:"];
    v5 = 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 887;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader queryAssetsAnalyzedSince:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__29;
    v11 = __Block_byref_object_dispose__29;
    v12 = 0;
    if (!sinceCopy)
    {
      sinceCopy = [MEMORY[0x1E695DF00] distantPast];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__VCPDatabaseReader_queryAssetsAnalyzedSince___block_invoke;
    v7[3] = &unk_1E834E1E8;
    v7[4] = self;
    sinceCopy = sinceCopy;
    v8 = sinceCopy;
    v9 = buf;
    [(VCPDatabaseReader *)self executeDatabaseBlock:v7];
    v5 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  return v5;
}

uint64_t __46__VCPDatabaseReader_queryAssetsAnalyzedSince___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT localIdentifier FROM Assets WHERE dateAnalyzed>=(?) UNION SELECT localIdentifier FROM Blacklist WHERE count>=(?) AND date>=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      [v4 timeIntervalSinceReferenceDate];
      v7 = sqlite3_bind_double(v3, 1, v6);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v2 = sqlite3_bind_int(ppStmt, 2, 2);
      if (!v2)
      {
        v8 = ppStmt;
        v9 = *(a1 + 40);
        v10 = v9;
        if (v9)
        {
          [v9 timeIntervalSinceReferenceDate];
          v12 = sqlite3_bind_double(v8, 3, v11);
        }

        else
        {
          v12 = sqlite3_bind_null(v8, 3);
        }

        v2 = v12;

        if (!v2)
        {
          v13 = sqlite3_expanded_sql(ppStmt);
          if (v13)
          {
            if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v25 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
              v26 = 1024;
              v27 = 900;
              v28 = 2080;
              v29 = v13;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
            }

            sqlite3_free(v13);
          }

          v14 = sqlite3_step(ppStmt);
          v15 = [MEMORY[0x1E695DF70] array];
          v16 = *(*(a1 + 48) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;
          while (1)
          {

            if (v14 != 100)
            {
              break;
            }

            v18 = ppStmt;
            if (sqlite3_column_type(ppStmt, 0) == 5)
            {
              v17 = 0;
            }

            else
            {
              v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v18, 0)}];
            }

            [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
            v14 = sqlite3_step(ppStmt);
          }

          if (v14 == 101)
          {
            sqlite3_finalize(ppStmt);
            return 0;
          }

          v2 = 4294967278;
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 40);
    *buf = 138412290;
    v25 = v19;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Failed to query assets since %@", buf, 0xCu);
  }

  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;

  return v2;
}

- (id)queryFailedProcessingStatusFromAssets:(id)assets forTaskID:(unint64_t)d
{
  v17 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryFailedProcessingStatusFromAssets:forTaskID:" replacedByMethodName:@"queryAssetCountFromLocalIdentifiers:taskID:excludingStatuses:"];
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 933;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader queryFailedProcessingStatusFromAssets:forTaskID:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    if ([assetsCopy count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__29;
      v15 = __Block_byref_object_dispose__29;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __69__VCPDatabaseReader_queryFailedProcessingStatusFromAssets_forTaskID___block_invoke;
      v9[3] = &unk_1E834E1C0;
      v10 = assetsCopy;
      selfCopy = self;
      v12 = buf;
      dCopy = d;
      [(VCPDatabaseReader *)self executeDatabaseBlock:v9];
      v7 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
      goto LABEL_9;
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

uint64_t __69__VCPDatabaseReader_queryFailedProcessingStatusFromAssets_forTaskID___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"SELECT localIdentifier, status, attempts, lastAttemptDate, nextAttemptDate, errorCode, errorLine FROM ProcessingStatus WHERE taskID=(?) AND status!=(?) AND localIdentifier IN (?");
  for (i = 1; i < [*(a1 + 32) count]; ++i)
  {
    [v2 appendString:{@", ?"}];
  }

  [v2 appendString:@";"]);
  ppStmt = 0;
  v4 = sqlite3_prepare_v2(*(*(a1 + 40) + 24), [v2 UTF8String], -1, &ppStmt, 0);
  if (!v4)
  {
    v4 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 56));
    if (!v4)
    {
      v4 = sqlite3_bind_int64(ppStmt, 2, 1);
      if (!v4)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v5 = *(a1 + 32);
        v6 = [v5 countByEnumeratingWithState:&v36 objects:v47 count:16];
        if (v6)
        {
          v7 = *v37;
          v8 = 3;
          while (2)
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v37 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v10 = ppStmt;
              v11 = [*(*(&v36 + 1) + 8 * j) localIdentifier];
              v12 = v11;
              if (v11)
              {
                v13 = v11;
                v14 = sqlite3_bind_text(v10, v8, [v12 UTF8String], -1, 0);
              }

              else
              {
                v14 = sqlite3_bind_null(v10, v8);
              }

              v4 = v14;

              if (v4)
              {

                goto LABEL_42;
              }

              ++v8;
            }

            v6 = [v5 countByEnumeratingWithState:&v36 objects:v47 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }

        v15 = sqlite3_expanded_sql(ppStmt);
        if (v15)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v42 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
            v43 = 1024;
            v44 = 954;
            v45 = 2080;
            v46 = v15;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v15);
        }

        v16 = sqlite3_step(ppStmt);
        while (v16 == 100)
        {
          v17 = ppStmt;
          if (sqlite3_column_type(ppStmt, 0) == 5)
          {
            v18 = 0;
          }

          else
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v17, 0)}];
          }

          v19 = *(a1 + 56);
          v20 = sqlite3_column_int64(ppStmt, 1);
          v21 = sqlite3_column_int64(ppStmt, 2);
          v22 = ppStmt;
          if (sqlite3_column_type(ppStmt, 3) == 5)
          {
            v23 = 0;
          }

          else
          {
            v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v22, 3)}];
          }

          v24 = ppStmt;
          if (sqlite3_column_type(ppStmt, 4) == 5)
          {
            v25 = 0;
          }

          else
          {
            v25 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v24, 4)}];
          }

          v26 = sqlite3_column_int64(ppStmt, 5);
          v27 = sqlite3_column_int64(ppStmt, 6);
          v28 = [VCPProcessingStatusEntry entryWithLocalIdentifier:v18 taskID:v19 status:v20 attempts:v21 lastAttemptDate:v23 andNextAttemptDate:v25 errorCode:v26 errorLine:v27, v36];

          v29 = *(*(*(a1 + 48) + 8) + 40);
          v30 = ppStmt;
          if (sqlite3_column_type(ppStmt, 0) == 5)
          {
            v31 = 0;
          }

          else
          {
            v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v30, 0)}];
          }

          [v29 setObject:v28 forKeyedSubscript:v31];

          v16 = sqlite3_step(ppStmt);
        }

        if (v16 == 101)
        {
          v4 = 0;
        }

        else
        {
          v4 = 4294967278;
        }
      }
    }
  }

LABEL_42:
  sqlite3_finalize(ppStmt);
  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 56);
      *buf = 134217984;
      v42 = v32;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Failed to query failed assets for taskID: %lu", buf, 0xCu);
    }

    v33 = *(*(a1 + 48) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = 0;
  }

  return v4;
}

- (id)queryLocalIdentifiersForTaskID:(unint64_t)d withStatus:(unint64_t)status
{
  v13 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryLocalIdentifiersForTaskID:withStatus:" replacedByMethodName:@"fetchLocalIdentifiers:taskID:processingStatus:"];
    v7 = 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 994;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader queryLocalIdentifiersForTaskID:withStatus:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__29;
    v11 = __Block_byref_object_dispose__29;
    v12 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__VCPDatabaseReader_queryLocalIdentifiersForTaskID_withStatus___block_invoke;
    v9[3] = &unk_1E834E288;
    v9[6] = d;
    v9[7] = status;
    v9[4] = self;
    v9[5] = buf;
    [(VCPDatabaseReader *)self executeDatabaseBlock:v9];
    v7 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  return v7;
}

uint64_t __63__VCPDatabaseReader_queryLocalIdentifiersForTaskID_withStatus___block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  ppStmt = 0;
  v3 = sqlite3_prepare_v2(*(a1[4] + 24), "SELECT localIdentifier FROM ProcessingStatus WHERE taskID=(?) AND status=(?);", -1, &ppStmt, 0);
  if (v3)
  {
    goto LABEL_4;
  }

  v3 = sqlite3_bind_int64(ppStmt, 1, a1[6]);
  if (v3)
  {
    goto LABEL_4;
  }

  v3 = sqlite3_bind_int64(ppStmt, 2, a1[7]);
  if (v3)
  {
    goto LABEL_4;
  }

  v7 = sqlite3_expanded_sql(ppStmt);
  if (v7)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v14 = 1024;
      v15 = 1005;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v7);
  }

  v3 = sqlite3_step(ppStmt);
  v8 = MEMORY[0x1E69E9C10];
  while (v3 == 100)
  {
    v9 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v9, 0)}], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, v8, OS_LOG_TYPE_DEBUG, "[MediaAnalysis] WARNING: ProcessingStatus entry with nil localIdentifier", buf, 2u);
      }

      v10 = 0;
    }

    else
    {
      [v2 addObject:v10];
    }

    v3 = sqlite3_step(ppStmt);
  }

  if (v3 && v3 != 101)
  {
LABEL_4:

    v2 = 0;
  }

  else
  {
    v3 = 0;
  }

  sqlite3_finalize(ppStmt);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;

  return v3;
}

- (unint64_t)countForTaskID:(unint64_t)d minimumAttempts:(unint64_t)attempts
{
  v11 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"countForTaskID:minimumAttempts:" replacedByMethodName:@"queryAssetCountForTaskID:minimumAttempts:"];
    return 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1034;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader countForTaskID:minimumAttempts:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__VCPDatabaseReader_countForTaskID_minimumAttempts___block_invoke;
    v9[3] = &unk_1E834E288;
    v9[6] = d;
    v9[7] = attempts;
    v9[4] = self;
    v9[5] = buf;
    [(VCPDatabaseReader *)self executeDatabaseBlock:v9];
    v7 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return v7;
}

uint64_t __52__VCPDatabaseReader_countForTaskID_minimumAttempts___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(a1[4] + 24), "SELECT COUNT(*) FROM ProcessingStatus WHERE taskID=(?) AND attempts>=(?);", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, a1[6]), v2) || (v2 = sqlite3_bind_int64(ppStmt, 2, a1[7]), v2))
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    v6 = sqlite3_expanded_sql(ppStmt);
    if (v6)
    {
      v7 = v6;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
        v11 = 1024;
        v12 = 1043;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v7);
    }

    if (sqlite3_step(ppStmt) == 100)
    {
      v4 = sqlite3_column_int64(ppStmt, 0);
      v3 = 0;
    }

    else
    {
      v4 = 0;
      v3 = 4294967278;
    }
  }

  *(*(a1[5] + 8) + 24) = v4;
  sqlite3_finalize(ppStmt);
  return v3;
}

- (unint64_t)countForTaskID:(unint64_t)d withProcessingStatus:(unint64_t)status
{
  v11 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"countForTaskID:withProcessingStatus:" replacedByMethodName:@"queryAssetCountForTaskID:status:"];
    return 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1062;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader countForTaskID:withProcessingStatus:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__VCPDatabaseReader_countForTaskID_withProcessingStatus___block_invoke;
    v9[3] = &unk_1E834E288;
    v9[6] = d;
    v9[7] = status;
    v9[4] = self;
    v9[5] = buf;
    [(VCPDatabaseReader *)self executeDatabaseBlock:v9];
    v7 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return v7;
}

uint64_t __57__VCPDatabaseReader_countForTaskID_withProcessingStatus___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(a1[4] + 24), "SELECT COUNT(*) FROM ProcessingStatus WHERE taskID=(?) AND status=(?);", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, a1[6]), v2) || (v2 = sqlite3_bind_int64(ppStmt, 2, a1[7]), v2))
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    v6 = sqlite3_expanded_sql(ppStmt);
    if (v6)
    {
      v7 = v6;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
        v11 = 1024;
        v12 = 1071;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v7);
    }

    if (sqlite3_step(ppStmt) == 100)
    {
      v4 = sqlite3_column_int64(ppStmt, 0);
      v3 = 0;
    }

    else
    {
      v4 = 0;
      v3 = 4294967278;
    }
  }

  *(*(a1[5] + 8) + 24) = v4;
  sqlite3_finalize(ppStmt);
  return v3;
}

- (id)loadProcessingStatus
{
  v15 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v11 = 1024;
    v12 = 1085;
    v13 = 2080;
    v14 = "[VCPDatabaseReader loadProcessingStatus]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__VCPDatabaseReader_loadProcessingStatus__block_invoke;
  v7[3] = &unk_1E834E198;
  v7[4] = self;
  v4 = array;
  v8 = v4;
  if ([(VCPDatabaseReader *)self executeDatabaseBlock:v7])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

uint64_t __41__VCPDatabaseReader_loadProcessingStatus__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v1 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT localIdentifier, taskID, status, attempts, lastAttemptDate, nextAttemptDate,  mediaType, mediaSubtypes, errorCode, errorLine FROM ProcessingStatus;", -1, &ppStmt, 0);
  if (v1)
  {
    goto LABEL_28;
  }

  v2 = sqlite3_expanded_sql(ppStmt);
  if (v2)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v22 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v23 = 1024;
      v24 = 1094;
      v25 = 2080;
      v26 = v2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v2);
  }

  v1 = sqlite3_step(ppStmt);
  while (v1 == 100)
  {
    v3 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v3, 0)}];
    }

    v5 = sqlite3_column_int64(ppStmt, 1);
    v6 = sqlite3_column_int64(ppStmt, 2);
    v7 = sqlite3_column_int64(ppStmt, 3);
    v8 = ppStmt;
    if (sqlite3_column_type(ppStmt, 4) == 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v8, 4)}];
    }

    v10 = ppStmt;
    if (sqlite3_column_type(ppStmt, 5) == 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v10, 5)}];
    }

    v12 = sqlite3_column_int64(ppStmt, 6);
    v13 = sqlite3_column_int64(ppStmt, 7);
    v14 = sqlite3_column_int64(ppStmt, 8);
    v15 = sqlite3_column_int64(ppStmt, 9);
    v16 = *(a1 + 40);
    v17 = [VCPProcessingStatusEntry entryWithLocalIdentifier:v4 taskID:v5 status:v6 attempts:v7 lastAttemptDate:v9 andNextAttemptDate:v11 mediaType:v12 mediaSubtypes:v13 errorCode:v14 errorLine:v15];
    [v16 addObject:v17];

    v1 = sqlite3_step(ppStmt);
  }

  if (v1 && v1 != 101)
  {
LABEL_28:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load ProcessingStatus", buf, 2u);
    }
  }

  else
  {
    v1 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v1;
}

- (int)_queryValue:(int64_t *)value forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v19 = 1024;
    v20 = 1136;
    v21 = 2080;
    v22 = "[VCPDatabaseReader _queryValue:forKey:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  ppStmt = 0;
  *value = 0;
  v7 = sqlite3_prepare_v2(self->_database, "SELECT value FROM KeyValueStore WHERE key = (?);", -1, &ppStmt, 0);
  if (v7)
  {
    goto LABEL_26;
  }

  v8 = ppStmt;
  v9 = keyCopy;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = sqlite3_bind_text(v8, 1, [v10 UTF8String], -1, 0);
  }

  else
  {
    v12 = sqlite3_bind_null(v8, 1);
  }

  v7 = v12;

  if (v7)
  {
    goto LABEL_26;
  }

  v15 = sqlite3_expanded_sql(ppStmt);
  if (v15)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v19 = 1024;
      v20 = 1144;
      v21 = 2080;
      v22 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v15);
  }

  v7 = sqlite3_step(ppStmt);
  if (v7 == 100)
  {
    *value = sqlite3_column_int64(ppStmt, 0);
    v7 = sqlite3_step(ppStmt);
  }

  v13 = 0;
  if (v7)
  {
    if (v7 != 101)
    {
LABEL_26:
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v18) = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to query KeyValueStore (error code: %d)", buf, 8u);
      }

      v13 = v7;
    }
  }

  sqlite3_finalize(ppStmt);

  return v13;
}

- (int64_t)valueForKey:(id)key
{
  v11 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"valueForKey:" replacedByMethodName:@"dataStoreValueForKey:"];
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1165;
    *&buf[18] = 2080;
    *&buf[20] = "[VCPDatabaseReader valueForKey:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if (!keyCopy)
  {
    goto LABEL_8;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__VCPDatabaseReader_valueForKey___block_invoke;
  v7[3] = &unk_1E834E2B0;
  v7[4] = self;
  v9 = buf;
  v8 = keyCopy;
  [(VCPDatabaseReader *)self executeDatabaseBlock:v7];
  v5 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
LABEL_9:

  return v5;
}

- (id)loadKeyValues
{
  v16 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"loadKeyValues:" replacedByMethodName:@"fetchAllDataStoreKeyValuePairs:"];
    v3 = 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v11 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v12 = 1024;
      v13 = 1180;
      v14 = 2080;
      v15 = "[VCPDatabaseReader loadKeyValues]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __34__VCPDatabaseReader_loadKeyValues__block_invoke;
    v8[3] = &unk_1E834E198;
    v8[4] = self;
    v5 = dictionary;
    v9 = v5;
    [(VCPDatabaseReader *)self executeDatabaseBlock:v8];
    v6 = v9;
    v3 = v5;
  }

  return v3;
}

uint64_t __34__VCPDatabaseReader_loadKeyValues__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT key, value FROM KeyValueStore;", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_26;
  }

  v3 = sqlite3_expanded_sql(ppStmt);
  if (v3)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v11 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v12 = 1024;
      v13 = 1188;
      v14 = 2080;
      v15 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v3);
  }

  v2 = sqlite3_step(ppStmt);
  v4 = MEMORY[0x1E69E9C10];
  while (v2 == 100)
  {
    v5 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v5, 0)}], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, v4, OS_LOG_TYPE_DEFAULT, "Parsed a value without key specified; skipping this value", buf, 2u);
      }

      v6 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(ppStmt, 1)}];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
    }

    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_26:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to query KeyValueStore", buf, 2u);
    }
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

- (id)migration_loadKeyValues
{
  v16 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v12 = 1024;
    v13 = 1211;
    v14 = 2080;
    v15 = "[VCPDatabaseReader migration_loadKeyValues]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__VCPDatabaseReader_migration_loadKeyValues__block_invoke;
  v8[3] = &unk_1E834E198;
  v8[4] = self;
  v4 = dictionary;
  v9 = v4;
  [(VCPDatabaseReader *)self executeDatabaseBlock:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __44__VCPDatabaseReader_migration_loadKeyValues__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT key, value FROM KeyValueStore;", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_26;
  }

  v3 = sqlite3_expanded_sql(ppStmt);
  if (v3)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v11 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v12 = 1024;
      v13 = 1219;
      v14 = 2080;
      v15 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v3);
  }

  v2 = sqlite3_step(ppStmt);
  v4 = MEMORY[0x1E69E9C10];
  while (v2 == 100)
  {
    v5 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v5, 0)}], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, v4, OS_LOG_TYPE_DEFAULT, "Parsed a value without key specified; skipping this value", buf, 2u);
      }

      v6 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(ppStmt, 1)}];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
    }

    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_26:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to query KeyValueStore", buf, 2u);
    }
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

- (int)querySchedulingHistoryRecords:(id *)records forActivityID:(unint64_t)d startDate:(id)date endDate:(id)endDate
{
  v22 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"querySchedulingHistoryRecords:forActivityID:startDate:endDate:" replacedByMethodName:@"querySchedulingHistoryRecords:forActivityID:startDate:endDate:"];
    v12 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1250;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader querySchedulingHistoryRecords:forActivityID:startDate:endDate:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__29;
    v20 = __Block_byref_object_dispose__29;
    array = [MEMORY[0x1E695DF70] array];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__VCPDatabaseReader_querySchedulingHistoryRecords_forActivityID_startDate_endDate___block_invoke;
    v14[3] = &unk_1E834E260;
    v14[4] = self;
    dCopy = d;
    v15 = dateCopy;
    v16 = endDateCopy;
    v17 = buf;
    v12 = [(VCPDatabaseReader *)self executeDatabaseBlock:v14];
    *records = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  return v12;
}

uint64_t __83__VCPDatabaseReader_querySchedulingHistoryRecords_forActivityID_startDate_endDate___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT activityID, startTime, duration, exitStatus, sessionLog FROM BackgroundActivitySchedulingHistory WHERE activityID=(?) AND startTime>=(?) AND startTime<=(?);", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_35;
  }

  v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 64));
  if (v2)
  {
    goto LABEL_35;
  }

  v3 = ppStmt;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = sqlite3_bind_double(v3, 2, v6);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 2);
  }

  v2 = v7;

  if (v2)
  {
    goto LABEL_35;
  }

  v8 = ppStmt;
  v9 = *(a1 + 48);
  v10 = v9;
  if (v9)
  {
    [v9 timeIntervalSinceReferenceDate];
    v12 = sqlite3_bind_double(v8, 3, v11);
  }

  else
  {
    v12 = sqlite3_bind_null(v8, 3);
  }

  v2 = v12;

  if (v2)
  {
    goto LABEL_35;
  }

  v17 = sqlite3_expanded_sql(ppStmt);
  if (v17)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v25 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v26 = 1024;
      v27 = 1262;
      v28 = 2080;
      v29 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v17);
  }

  v2 = sqlite3_step(ppStmt);
  while (v2 == 100)
  {
    v18 = objc_alloc_init(MADActivitySchedulingRecord);
    [(MADActivitySchedulingRecord *)v18 setActivityID:sqlite3_column_int64(ppStmt, 0)];
    v19 = ppStmt;
    if (sqlite3_column_type(ppStmt, 1) == 5)
    {
      v20 = 0;
    }

    else
    {
      v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v19, 1)}];
    }

    [(MADActivitySchedulingRecord *)v18 setStartTime:v20];

    [(MADActivitySchedulingRecord *)v18 setDuration:sqlite3_column_double(ppStmt, 2)];
    [(MADActivitySchedulingRecord *)v18 setExitStatus:sqlite3_column_int64(ppStmt, 3)];
    v21 = ppStmt;
    if (sqlite3_column_type(ppStmt, 4) == 5)
    {
      v22 = 0;
    }

    else
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v21, 4)}];
    }

    [(MADActivitySchedulingRecord *)v18 setSessionLog:v22];

    [*(*(*(a1 + 56) + 8) + 40) addObject:v18];
    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_35:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = VCPTaskIDDescription(*(a1 + 64));
      *buf = 138412546;
      v25 = v13;
      v26 = 1024;
      v27 = v2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[SchedulingHistory] Failed to query history for %@ - %d", buf, 0x12u);
    }

    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

- (int)querySchedulingHistoryRecords:(id *)records startDate:(id)date endDate:(id)endDate
{
  v19 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"querySchedulingHistoryRecords:startDate:endDate:" replacedByMethodName:@"querySchedulingHistoryRecords:startDate:endDate:"];
    v10 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1300;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader querySchedulingHistoryRecords:startDate:endDate:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__29;
    v17 = __Block_byref_object_dispose__29;
    array = [MEMORY[0x1E695DF70] array];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__VCPDatabaseReader_querySchedulingHistoryRecords_startDate_endDate___block_invoke;
    v12[3] = &unk_1E834E238;
    v12[4] = self;
    v13 = dateCopy;
    v14 = endDateCopy;
    v15 = buf;
    v10 = [(VCPDatabaseReader *)self executeDatabaseBlock:v12];
    *records = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  return v10;
}

uint64_t __69__VCPDatabaseReader_querySchedulingHistoryRecords_startDate_endDate___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT activityID, startTime, duration, exitStatus, sessionLog FROM BackgroundActivitySchedulingHistory WHERE startTime>=(?) AND startTime<=(?);", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_34;
  }

  v3 = ppStmt;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = sqlite3_bind_double(v3, 1, v6);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 1);
  }

  v2 = v7;

  if (v2)
  {
    goto LABEL_34;
  }

  v8 = ppStmt;
  v9 = *(a1 + 48);
  v10 = v9;
  if (v9)
  {
    [v9 timeIntervalSinceReferenceDate];
    v12 = sqlite3_bind_double(v8, 2, v11);
  }

  else
  {
    v12 = sqlite3_bind_null(v8, 2);
  }

  v2 = v12;

  if (v2)
  {
    goto LABEL_34;
  }

  v16 = sqlite3_expanded_sql(ppStmt);
  if (v16)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v24 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v25 = 1024;
      v26 = 1311;
      v27 = 2080;
      v28 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v16);
  }

  v2 = sqlite3_step(ppStmt);
  while (v2 == 100)
  {
    v17 = objc_alloc_init(MADActivitySchedulingRecord);
    [(MADActivitySchedulingRecord *)v17 setActivityID:sqlite3_column_int64(ppStmt, 0)];
    v18 = ppStmt;
    if (sqlite3_column_type(ppStmt, 1) == 5)
    {
      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v18, 1)}];
    }

    [(MADActivitySchedulingRecord *)v17 setStartTime:v19];

    [(MADActivitySchedulingRecord *)v17 setDuration:sqlite3_column_double(ppStmt, 2)];
    [(MADActivitySchedulingRecord *)v17 setExitStatus:sqlite3_column_int64(ppStmt, 3)];
    v20 = ppStmt;
    if (sqlite3_column_type(ppStmt, 4) == 5)
    {
      v21 = 0;
    }

    else
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v20, 4)}];
    }

    [(MADActivitySchedulingRecord *)v17 setSessionLog:v21];

    [*(*(*(a1 + 56) + 8) + 40) addObject:v17];
    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_34:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v24) = v2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[SchedulingHistory] Failed to query all background activities - %d", buf, 8u);
    }

    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

- (int)migration_querySchedulingHistoryRecords:(id *)records startDate:(id)date endDate:(id)endDate
{
  v21 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1343;
    *&buf[18] = 2080;
    *&buf[20] = "[VCPDatabaseReader migration_querySchedulingHistoryRecords:startDate:endDate:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__29;
  v19 = __Block_byref_object_dispose__29;
  array = [MEMORY[0x1E695DF70] array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__VCPDatabaseReader_migration_querySchedulingHistoryRecords_startDate_endDate___block_invoke;
  v14[3] = &unk_1E834E238;
  v14[4] = self;
  v10 = dateCopy;
  v15 = v10;
  v11 = endDateCopy;
  v16 = v11;
  v17 = buf;
  v12 = [(VCPDatabaseReader *)self executeDatabaseBlock:v14];
  *records = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  return v12;
}

uint64_t __79__VCPDatabaseReader_migration_querySchedulingHistoryRecords_startDate_endDate___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT activityID, startTime, duration, exitStatus, sessionLog FROM BackgroundActivitySchedulingHistory WHERE startTime>=(?) AND startTime<=(?);", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_34;
  }

  v3 = ppStmt;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = sqlite3_bind_double(v3, 1, v6);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 1);
  }

  v2 = v7;

  if (v2)
  {
    goto LABEL_34;
  }

  v8 = ppStmt;
  v9 = *(a1 + 48);
  v10 = v9;
  if (v9)
  {
    [v9 timeIntervalSinceReferenceDate];
    v12 = sqlite3_bind_double(v8, 2, v11);
  }

  else
  {
    v12 = sqlite3_bind_null(v8, 2);
  }

  v2 = v12;

  if (v2)
  {
    goto LABEL_34;
  }

  v16 = sqlite3_expanded_sql(ppStmt);
  if (v16)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v24 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v25 = 1024;
      v26 = 1354;
      v27 = 2080;
      v28 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v16);
  }

  v2 = sqlite3_step(ppStmt);
  while (v2 == 100)
  {
    v17 = objc_alloc_init(MADActivitySchedulingRecord);
    [(MADActivitySchedulingRecord *)v17 setActivityID:sqlite3_column_int64(ppStmt, 0)];
    v18 = ppStmt;
    if (sqlite3_column_type(ppStmt, 1) == 5)
    {
      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v18, 1)}];
    }

    [(MADActivitySchedulingRecord *)v17 setStartTime:v19];

    [(MADActivitySchedulingRecord *)v17 setDuration:sqlite3_column_double(ppStmt, 2)];
    [(MADActivitySchedulingRecord *)v17 setExitStatus:sqlite3_column_int64(ppStmt, 3)];
    v20 = ppStmt;
    if (sqlite3_column_type(ppStmt, 4) == 5)
    {
      v21 = 0;
    }

    else
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v20, 4)}];
    }

    [(MADActivitySchedulingRecord *)v17 setSessionLog:v21];

    [*(*(*(a1 + 56) + 8) + 40) addObject:v17];
    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_34:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v24) = v2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[SchedulingHistory] Failed to query all background activities - %d", buf, 8u);
    }

    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

- (int)queryProgressHistoryRecords:(id *)records sinceDate:(id)date
{
  v15 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryProgressHistoryRecords:sinceDate:" replacedByMethodName:@"queryProgressHistoryRecords:sinceDate:"];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1390;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseReader queryProgressHistoryRecords:sinceDate:]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__29;
    v13 = __Block_byref_object_dispose__29;
    array = [MEMORY[0x1E695DF70] array];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__VCPDatabaseReader_queryProgressHistoryRecords_sinceDate___block_invoke;
    v9[3] = &unk_1E834E1E8;
    v9[4] = self;
    v10 = dateCopy;
    v11 = buf;
    v7 = [(VCPDatabaseReader *)self executeDatabaseBlock:v9];
    *records = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  return v7;
}

uint64_t __59__VCPDatabaseReader_queryProgressHistoryRecords_sinceDate___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT activityID, analysisSubtype, storeDate, version, processedAssetCount, totalAssetCount FROM BackgroundAnalysisProgressHistory WHERE storeDate>=(?) ORDER BY activityID ASC, analysisSubtype ASC, storeDate DESC;", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_27;
  }

  v3 = ppStmt;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = sqlite3_bind_double(v3, 1, v6);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 1);
  }

  v2 = v7;

  if (v2)
  {
    goto LABEL_27;
  }

  v11 = sqlite3_expanded_sql(ppStmt);
  if (v11)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v17 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v18 = 1024;
      v19 = 1401;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v11);
  }

  v2 = sqlite3_step(ppStmt);
  while (v2 == 100)
  {
    v12 = objc_alloc_init(MADBackgroundAnalysisProgressRecord);
    [(MADBackgroundAnalysisProgressRecord *)v12 setActivityID:sqlite3_column_int64(ppStmt, 0)];
    [(MADBackgroundAnalysisProgressRecord *)v12 setAnalysisSubtype:sqlite3_column_int64(ppStmt, 1)];
    v13 = ppStmt;
    if (sqlite3_column_type(ppStmt, 2) == 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v13, 2)}];
    }

    [(MADBackgroundAnalysisProgressRecord *)v12 setStoreDate:v14];

    [(MADBackgroundAnalysisProgressRecord *)v12 setVersion:sqlite3_column_int64(ppStmt, 3)];
    [(MADBackgroundAnalysisProgressRecord *)v12 setProcessedAssetCount:sqlite3_column_int64(ppStmt, 4)];
    [(MADBackgroundAnalysisProgressRecord *)v12 setTotalAssetCount:sqlite3_column_int64(ppStmt, 5)];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v12];
    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_27:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to query BackgroundAnalysisProgressHistory table", buf, 2u);
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

- (int)countAssetsForTaskID:(unint64_t)d totalAssets:(unint64_t *)assets processedAssets:(unint64_t *)processedAssets
{
  v17 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"countAssetsForTaskID:totalAssets:processedAssets:" replacedByMethodName:@"countAssetsForTaskID:totalAssets:processedAssets:"];
    return -50;
  }

  else
  {
    result = -50;
    if (assets && processedAssets)
    {
      if (MediaAnalysisEnableDatabaseLog())
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
          v13 = 1024;
          v14 = 1440;
          v15 = 2080;
          v16 = "[VCPDatabaseReader countAssetsForTaskID:totalAssets:processedAssets:]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
        }
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __70__VCPDatabaseReader_countAssetsForTaskID_totalAssets_processedAssets___block_invoke;
      v10[3] = &unk_1E834E2D8;
      v10[4] = self;
      v10[5] = d;
      v10[6] = assets;
      v10[7] = processedAssets;
      [(VCPDatabaseReader *)self executeDatabaseBlock:v10];
      return 0;
    }
  }

  return result;
}

uint64_t __70__VCPDatabaseReader_countAssetsForTaskID_totalAssets_processedAssets___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT totalAssetCount, processedAssetCount FROM BackgroundAnalysisProgressHistory WHERE activityID=(?) ORDER BY storeDate DESC LIMIT 1 ", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 40)), v2))
  {
    v3 = v2;
  }

  else
  {
    v5 = sqlite3_expanded_sql(ppStmt);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
        v11 = 1024;
        v12 = 1450;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v6);
    }

    while (1)
    {
      v7 = sqlite3_step(ppStmt);
      if (v7 != 100)
      {
        break;
      }

      **(a1 + 48) = sqlite3_column_int64(ppStmt, 0);
      **(a1 + 56) = sqlite3_column_int64(ppStmt, 1);
    }

    if (v7 == 101)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

- (int)migration_queryProgressHistoryRecords:(id *)records sinceDate:(id)date
{
  v16 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1469;
    *&buf[18] = 2080;
    *&buf[20] = "[VCPDatabaseReader migration_queryProgressHistoryRecords:sinceDate:]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  array = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__VCPDatabaseReader_migration_queryProgressHistoryRecords_sinceDate___block_invoke;
  v10[3] = &unk_1E834E1E8;
  v10[4] = self;
  v7 = dateCopy;
  v11 = v7;
  v12 = buf;
  v8 = [(VCPDatabaseReader *)self executeDatabaseBlock:v10];
  *records = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  return v8;
}

uint64_t __69__VCPDatabaseReader_migration_queryProgressHistoryRecords_sinceDate___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT activityID, analysisSubtype, storeDate, version, processedAssetCount, totalAssetCount FROM BackgroundAnalysisProgressHistory WHERE storeDate>=(?) ORDER BY activityID ASC, analysisSubtype ASC, storeDate DESC;", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_27;
  }

  v3 = ppStmt;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = sqlite3_bind_double(v3, 1, v6);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 1);
  }

  v2 = v7;

  if (v2)
  {
    goto LABEL_27;
  }

  v11 = sqlite3_expanded_sql(ppStmt);
  if (v11)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v17 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v18 = 1024;
      v19 = 1480;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v11);
  }

  v2 = sqlite3_step(ppStmt);
  while (v2 == 100)
  {
    v12 = objc_alloc_init(MADBackgroundAnalysisProgressRecord);
    [(MADBackgroundAnalysisProgressRecord *)v12 setActivityID:sqlite3_column_int64(ppStmt, 0)];
    [(MADBackgroundAnalysisProgressRecord *)v12 setAnalysisSubtype:sqlite3_column_int64(ppStmt, 1)];
    v13 = ppStmt;
    if (sqlite3_column_type(ppStmt, 2) == 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v13, 2)}];
    }

    [(MADBackgroundAnalysisProgressRecord *)v12 setStoreDate:v14];

    [(MADBackgroundAnalysisProgressRecord *)v12 setVersion:sqlite3_column_int64(ppStmt, 3)];
    [(MADBackgroundAnalysisProgressRecord *)v12 setProcessedAssetCount:sqlite3_column_int64(ppStmt, 4)];
    [(MADBackgroundAnalysisProgressRecord *)v12 setTotalAssetCount:sqlite3_column_int64(ppStmt, 5)];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v12];
    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_27:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to query BackgroundAnalysisProgressHistory table", buf, 2u);
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

- (id)migration_loadMomentsScheduledAssets
{
  v15 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
    v11 = 1024;
    v12 = 1510;
    v13 = 2080;
    v14 = "[VCPDatabaseReader migration_loadMomentsScheduledAssets]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VCPDatabaseReader_migration_loadMomentsScheduledAssets__block_invoke;
  v7[3] = &unk_1E834E198;
  v7[4] = self;
  v4 = array;
  v8 = v4;
  if ([(VCPDatabaseReader *)self executeDatabaseBlock:v7])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

uint64_t __57__VCPDatabaseReader_migration_loadMomentsScheduledAssets__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT localIdentifier, taskID, requestDate FROM MomentsScheduledAssets;", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_25;
  }

  v3 = sqlite3_expanded_sql(ppStmt);
  if (v3)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v14 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/MediaAnalysis/DatabaseReader.mm";
      v15 = 1024;
      v16 = 1518;
      v17 = 2080;
      v18 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v3);
  }

  v2 = sqlite3_step(ppStmt);
  while (v2 == 100)
  {
    v4 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v4, 0)}];
    }

    v6 = sqlite3_column_int64(ppStmt, 1);
    v7 = ppStmt;
    if (sqlite3_column_type(ppStmt, 2) == 5)
    {
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v7, 2)}];
    }

    v9 = *(a1 + 40);
    v10 = [MADMomentsScheduledAssetsEntry entryWithLocalIdentifier:v5 requestDate:v8 taskID:v6];
    [v9 addObject:v10];

    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_25:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load MomentsScheduledAssets", buf, 2u);
    }
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

- (void)openDatabase
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = self;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[VCPDatabaseReader] Failed to set busy handler: %d", v1, 8u);
}

@end