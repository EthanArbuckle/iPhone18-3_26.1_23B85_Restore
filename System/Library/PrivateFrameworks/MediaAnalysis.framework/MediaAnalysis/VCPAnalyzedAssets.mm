@interface VCPAnalyzedAssets
+ (id)assetsFromPhotoLibrary:(id)library;
+ (id)assetsWithoutFingerprintsFromPhotoLibrary:(id)library;
- (VCPAnalyzedAssets)initWithPhotoLibrary:(id)library andCondition:(id)condition;
- (int)next:(id *)next;
- (void)dealloc;
@end

@implementation VCPAnalyzedAssets

- (VCPAnalyzedAssets)initWithPhotoLibrary:(id)library andCondition:(id)condition
{
  libraryCopy = library;
  conditionCopy = condition;
  v36.receiver = self;
  v36.super_class = VCPAnalyzedAssets;
  v8 = [(VCPAnalyzedAssets *)&v36 init];
  v9 = v8;
  if (!v8)
  {
    v20 = 0;
    goto LABEL_21;
  }

  v8->_database = 0;
  p_database = &v8->_database;
  v8->_statement = 0;
  v11 = [NSMutableString stringWithString:@"SELECT count(*) FROM Assets"];
  v12 = [NSMutableString stringWithString:@"SELECT localIdentifier, version, dateModified, dateAnalyzed, analysisTypes, flags, quality, statsFlags, masterFingerprint, adjustedFingerprint FROM Assets"];
  if (conditionCopy)
  {
    [v11 appendFormat:@" WHERE %@", conditionCopy];
    [v12 appendFormat:@" WHERE %@", conditionCopy];
  }

  pStmt = 0;
  vcp_mediaAnalysisDatabaseFilepath = [libraryCopy vcp_mediaAnalysisDatabaseFilepath];
  v14 = +[NSFileManager defaultManager];
  v15 = [v14 fileExistsAtPath:vcp_mediaAnalysisDatabaseFilepath];

  if ((v15 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v21 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[VCPAnalyzedAssets] Database file does not exist", buf, 2u);
      }
    }

    v17 = -23;
    goto LABEL_15;
  }

  v16 = vcp_mediaAnalysisDatabaseFilepath;
  v17 = sqlite3_open([vcp_mediaAnalysisDatabaseFilepath UTF8String], &v9->_database);
  if (v17)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_15;
    }

    v18 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v18))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v38 = v17;
    v19 = "[VCPAnalyzedAssets] Failed to open database: %d";
    goto LABEL_9;
  }

  v25 = sqlite3_exec(*p_database, "BEGIN TRANSACTION;", 0, 0, 0);
  if (v25)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_27;
    }

    v26 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v26))
    {
      goto LABEL_27;
    }

    *buf = 67109120;
    v38 = v25;
    v27 = "[VCPAnalyzedAssets] Failed to begin transaction: %d";
LABEL_26:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v26, v27, buf, 8u);
LABEL_27:
    v17 = -20;
    goto LABEL_15;
  }

  v28 = *p_database;
  v29 = v11;
  v17 = sqlite3_prepare_v2(v28, [v11 UTF8String], -1, &pStmt, 0);
  if (v17)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_15;
    }

    v18 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v18))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v38 = v17;
    v19 = "[VCPAnalyzedAssets] Failed to prepare asset count query statement: %d";
  }

  else
  {
    v30 = *p_database;
    v31 = v12;
    v17 = sqlite3_prepare_v2(v30, [v12 UTF8String], -1, &v9->_statement, 0);
    if (!v17)
    {
      v32 = sqlite3_exec(*p_database, "END TRANSACTION;", 0, 0, 0);
      if (!v32)
      {
        v33 = sqlite3_step(pStmt);
        if (v33 == 100)
        {
          v17 = 0;
          v9->_count = sqlite3_column_int(pStmt, 0);
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v34 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v34))
            {
              *buf = 67109120;
              v38 = v33;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[VCPAnalyzedAssets] Failed to query asset count: %d", buf, 8u);
            }
          }

          v17 = -18;
        }

        goto LABEL_15;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_27;
      }

      v26 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v26))
      {
        goto LABEL_27;
      }

      *buf = 67109120;
      v38 = v32;
      v27 = "[VCPAnalyzedAssets] Failed to end transaction: %d";
      goto LABEL_26;
    }

    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_15;
    }

    v18 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v18))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v38 = v17;
    v19 = "[VCPAnalyzedAssets] Failed to prepare asset properties query statement: %d";
  }

LABEL_9:
  _os_log_impl(&_mh_execute_header, &_os_log_default, v18, v19, buf, 8u);
LABEL_15:
  sqlite3_finalize(pStmt);
  v22 = v9;
  if (v17)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 67109120;
        v38 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[VCPAnalyzedAssets] Error occurred when querying database: %d", buf, 8u);
      }
    }

    v22 = 0;
  }

  v20 = v22;

LABEL_21:
  return v20;
}

+ (id)assetsFromPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [[VCPAnalyzedAssets alloc] initWithPhotoLibrary:libraryCopy andCondition:0];

  return v4;
}

+ (id)assetsWithoutFingerprintsFromPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [[VCPAnalyzedAssets alloc] initWithPhotoLibrary:libraryCopy andCondition:@"masterFingerprint is NULL"];

  return v4;
}

- (void)dealloc
{
  sqlite3_finalize(self->_statement);
  sqlite3_close(self->_database);
  v3.receiver = self;
  v3.super_class = VCPAnalyzedAssets;
  [(VCPAnalyzedAssets *)&v3 dealloc];
}

- (int)next:(id *)next
{
  v5 = sqlite3_step(self->_statement);
  if (v5 == 100)
  {
    statement = self->_statement;
    if (sqlite3_column_type(statement, 0) == 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = [NSString stringWithUTF8String:sqlite3_column_text(statement, 0)];
    }

    v11 = sqlite3_column_int(self->_statement, 1);
    v12 = self->_statement;
    if (sqlite3_column_type(v12, 2) == 5)
    {
      v24 = 0;
    }

    else
    {
      v24 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(v12, 2)];
    }

    v13 = self->_statement;
    if (sqlite3_column_type(v13, 3) == 5)
    {
      v14 = v11;
      v15 = 0;
    }

    else
    {
      v15 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(v13, 3)];
      v14 = v11;
    }

    v16 = sqlite3_column_int64(self->_statement, 4);
    v17 = sqlite3_column_int(self->_statement, 5);
    v18 = sqlite3_column_double(self->_statement, 6);
    v19 = sqlite3_column_int64(self->_statement, 7);
    v20 = self->_statement;
    if (sqlite3_column_type(v20, 8) == 5)
    {
      v21 = 0;
    }

    else
    {
      v21 = [NSString stringWithUTF8String:sqlite3_column_text(v20, 8)];
    }

    v22 = self->_statement;
    if (sqlite3_column_type(v22, 9) == 5)
    {
      v23 = 0;
    }

    else
    {
      v23 = [NSString stringWithUTF8String:sqlite3_column_text(v22, 9)];
    }

    *next = [VCPAnalyzedAsset assetWithLocalIdentifier:v7 version:v14 dateModified:v24 dateAnalyzed:v15 types:v16 flags:v17 quality:v18 statsFlags:v19 masterFingerprint:v21 adjustedFingerprint:v23];

    return 0;
  }

  v8 = v5;
  *next = 0;
  if (v5 == 101)
  {
    return 0;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v9 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 67109120;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[VCPAnalyzedAssets] Failed to query next asset: %d", buf, 8u);
    }
  }

  return -19;
}

@end