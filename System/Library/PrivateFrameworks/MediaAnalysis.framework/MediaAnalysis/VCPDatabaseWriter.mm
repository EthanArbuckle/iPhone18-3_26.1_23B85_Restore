@interface VCPDatabaseWriter
+ (BOOL)isLegacyPersistEnabled;
+ (id)assetTypePredicatesStringWithMediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes imageOnlyAnalysis:(BOOL)analysis;
+ (id)databaseForPhotoLibrary:(id)library;
+ (id)databaseWithFilepath:(id)filepath;
+ (id)initializationCommand:(int)command;
+ (void)deprecatedExceptionForMethodName:(id)name replacedByMethodName:(id)methodName;
- (BOOL)exists;
- (BOOL)hasOutstandingTransactions;
- (BOOL)keyExistsInKeyValueStore:(id)store;
- (BOOL)shouldPropagateError:(int *)error finalAttempt:(BOOL)attempt;
- (VCPDatabaseWriter)initWithFilepath:(id)filepath;
- (VCPDatabaseWriter)initWithPhotoLibrary:(id)library;
- (id)creationDate;
- (id)photoLibrary;
- (int)_deleteAsset:(id)asset;
- (int)_deleteResult:(id)result forAssetId:(int64_t)id;
- (int)_getBlacklistCountForLocalIdentifier:(id)identifier count:(int *)count;
- (int)_getBlacklistExpiredCount:(id)count count:(int *)a4;
- (int)_queryPropertiesForAsset:(id)asset assetId:(int64_t *)id analysis:(id *)analysis;
- (int)_queryResultsForAssetId:(int64_t)id analysis:(id)analysis;
- (int)_queryValue:(int64_t *)value forKey:(id)key;
- (int)_removeAllProcessingStatusForTaskID:(unint64_t)d;
- (int)_removeKey:(id)key;
- (int)_removeProgressRecordsBeforeDate:(id)date;
- (int)_removeProgressRecordsBeyondMaximum:(unint64_t)maximum;
- (int)_removeSchedulingHistoryForStartTimeBefore:(id)before;
- (int)_setValue:(int64_t)value forKey:(id)key;
- (int)_storeAnalysis:(id)analysis forLocalIdentifier:(id)identifier;
- (int)_storeProgressForActivityID:(unint64_t)d withAnalysisSubtype:(unint64_t)subtype version:(unint64_t)version processedAssetCount:(unint64_t)count totalAssetCount:(unint64_t)assetCount storeDate:(id)date;
- (int)_storeProperties:(id)properties forLocalIdentifier:(id)identifier assetId:(int64_t *)id;
- (int)_storeResult:(id)result withKey:(id)key forAssetId:(int64_t)id;
- (int)_storeSchedulingHistoryForActivityID:(unint64_t)d andStartTime:(id)time;
- (int)_updateAnalysis:(id)analysis withAnalysis:(id)withAnalysis forAsset:(id)asset withAssetId:(int64_t)id;
- (int)_updateAnalysisInfoOnAnalysisVersionChange;
- (int)_updateAnalysisInfoWithCurrentVersion:(int)version andTimestamp:(int64_t)timestamp forTaskID:(unint64_t)d;
- (int)_updateOperatingSystemVersion;
- (int)_updateProperties:(id)properties forAssetId:(int64_t)id;
- (int)addAssetToBlacklist:(id)blacklist;
- (int)ageOutBlacklistBefore:(id)before count:(int *)count;
- (int)analysisForAsset:(id)asset analysis:(id *)analysis;
- (int)beginTransaction;
- (int)bumpAnalysisVersionForAsset:(id)asset;
- (int)commit;
- (int)commitTransaction;
- (int)containsAsset:(id)asset result:(BOOL *)result;
- (int)countAssetsForTaskID:(unint64_t)d totalAssets:(unint64_t *)assets processedAssets:(unint64_t *)processedAssets;
- (int)decrementBlacklistCountForLocalIdentifier:(id)identifier;
- (int)deleteAnalysisForAsset:(id)asset;
- (int)deleteAnalysisResultsWithType:(unint64_t)type;
- (int)executeDatabaseBlock:(id)block fallbackBlock:(id)fallbackBlock write:(BOOL)write;
- (int)fetchAllMomentsScheduledAssets:(id *)assets;
- (int)fetchEligibleToRetryLocalIdentifiers:(id *)identifiers processingStatus:(unint64_t)status taskID:(unint64_t)d fetchLimit:(unint64_t)limit additionalPredicates:(id)predicates;
- (int)fetchEligibleToRetryLocalIdentifiers:(id *)identifiers withProcessingStatus:(unint64_t)status andTaskID:(unint64_t)d andFetchLimit:(unint64_t)limit;
- (int)fetchLocalIdentifiers:(id *)identifiers processingStatus:(unint64_t)status taskID:(unint64_t)d attempts:(int)attempts fetchLimit:(unint64_t)limit additionalPredicates:(id)predicates;
- (int)fetchLocalIdentifiers:(id *)identifiers taskID:(unint64_t)d processingStatus:(unint64_t)status additionalPredicates:(id)predicates;
- (int)fetchLocalIdentifiers:(id *)identifiers withProcessingStatus:(unint64_t)status andTaskID:(unint64_t)d andAttempts:(int)attempts andFetchLimit:(unint64_t)limit;
- (int)fetchLocalIdentifiers:(id *)identifiers withTaskID:(unint64_t)d andProcessingStatus:(unint64_t)status;
- (int)fetchLocalIdentifiersEligibleForRetry:(id *)retry taskID:(unint64_t)d excludingStatuses:(id)statuses fetchLimit:(unint64_t)limit additionalPredicates:(id)predicates;
- (int)fetchLocalIdentifiersEligibleForRetry:(id *)retry taskID:(unint64_t)d includingStatuses:(id)statuses fetchLimit:(unint64_t)limit additionalPredicates:(id)predicates;
- (int)fetchLocalIdentifiersEligibleForRetry:(id *)retry withTaskID:(unint64_t)d andFetchLimit:(unint64_t)limit;
- (int)fetchMomentsScheduledAssetEntries:(id *)entries forTaskID:(unint64_t)d;
- (int)fetchProcessingErrorCode:(unint64_t *)code errorLine:(unint64_t *)line taskID:(unint64_t)d localIdentifier:(id)identifier;
- (int)fetchProcessingErrorCodeCounts:(id *)counts withTaskID:(unint64_t)d sinceDate:(id)date additionalPredicates:(id)predicates;
- (int)flushWAL;
- (int)getUserVersion:(int *)version;
- (int)hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d;
- (int)hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d additionalPredicates:(id)predicates;
- (int)loadAllKeyValuePairs:(id)pairs;
- (int)migration_deleteAnalysisForAssets:(id)assets;
- (int)migration_queryHeadersForAssets:(id)assets analyses:(id)analyses;
- (int)migration_restoreAnalysis:(id)analysis forLocalIdentifier:(id)identifier;
- (int)openDatabase;
- (int)parseHeader:(sqlite3_stmt *)header startColumn:(int)column analysis:(id)analysis;
- (int)purgeExcessiveSchedulingRecordsForActivityID:(unint64_t)d;
- (int)queryAnalysisResultsForAssets:(id)assets results:(id *)results;
- (int)queryAssetCountForTaskID:(unint64_t)d;
- (int)queryAssetCountForTaskID:(unint64_t)d minimumAttempts:(unint64_t)attempts;
- (int)queryAssetCountForTaskID:(unint64_t)d withStatus:(unint64_t)status andAttempts:(int)attempts;
- (int)queryAssetWithLocalIdentifier:(id)identifier forMediaAnalysisVersion:(id *)version;
- (int)queryChangeToken:(id *)token forTaskID:(unint64_t)d andChangeTokenType:(unint64_t)type;
- (int)queryHeadersForAssets:(id)assets analyses:(id)analyses;
- (int)queryProcessingStatus:(unint64_t *)status attempts:(int *)attempts lastAttemptDate:(id *)date andNextAttemptDate:(id *)attemptDate forLocalIdentifier:(id)identifier andTaskID:(unint64_t)d;
- (int)querySchedulingHistoryRecords:(id *)records forActivityID:(unint64_t)d sinceDate:(id)date;
- (int)removeAllChangeTokensForTaskID:(unint64_t)d;
- (int)removeAllProcessingStatusForTaskID:(unint64_t)d;
- (int)removeChangeTokenForTaskID:(unint64_t)d andChangeTokenType:(unint64_t)type;
- (int)removeKey:(id)key;
- (int)removeLocalIdentifierFromBlacklist:(id)blacklist;
- (int)removeMomentsScheduledAssetWithLocalIdentifier:(id)identifier andTaskID:(unint64_t)d;
- (int)removeProcessingStatusForLocalIdentifier:(id)identifier andTaskID:(unint64_t)d;
- (int)removeProcessingStatusForTaskID:(unint64_t)d mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes;
- (int)removeProgressEntriesBeyondLimits;
- (int)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date;
- (int)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes;
- (int)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes errorCode:(unint64_t)self0 errorLine:(unint64_t)self1;
- (int)setChangeToken:(id)token forTaskID:(unint64_t)d andChangeTokenType:(unint64_t)type date:(id)date;
- (int)setDeletePendingFlag:(BOOL)flag localIdentifier:(id)identifier;
- (int)setMomentsScheduledAssetWithLocalIdentifier:(id)identifier taskID:(unint64_t)d andRequestDate:(id)date;
- (int)setValue:(int64_t)value forKey:(id)key;
- (int)storeAnalysisForAsset:(id)asset analysis:(id)analysis;
- (int)storeProgressForActivityID:(unint64_t)d withAnalysisSubtype:(unint64_t)subtype version:(unint64_t)version processedAssetCount:(unint64_t)count totalAssetCount:(unint64_t)assetCount storeDate:(id)date;
- (int)storeSchedulingHistoryForActivityID:(unint64_t)d andStartTime:(id)time;
- (int)storeStatsFlags:(unint64_t)flags forLocalIdentifier:(id)identifier;
- (int)updateChangeToken:(id)token forTaskID:(unint64_t)d andChangeTokenType:(unint64_t)type;
- (int)updateDateModifiedForAsset:(id)asset;
- (int)updateFingerprint:(id)fingerprint forAsset:(id)asset;
- (int)updateLocalIdentifer:(id)identifer to:(id)to;
- (int)updateProcessingStatus:(unint64_t)status andNextAttemptDate:(id)date andErrorCode:(unint64_t)code andErrorLine:(unint64_t)line forLocalIdentifier:(id)identifier andTaskID:(unint64_t)d;
- (int)updateProcessingStatus:(unint64_t)status andNextAttemptDate:(id)date forLocalIdentifier:(id)identifier andTaskID:(unint64_t)d;
- (int)updateResultsForAsset:(id)asset results:(id)results;
- (int)updateSchedulingHistoryForActivityID:(unint64_t)d startTime:(id)time duration:(double)duration exitStatus:(int)status sessionLog:(id)log;
- (int64_t)backup_valueForKey:(id)key;
- (int64_t)compareExistingAnalysis:(id)analysis toNewAnalysis:(id)newAnalysis forAsset:(id)asset;
- (int64_t)valueForKey:(id)key;
- (unint64_t)_sizeBytes;
- (unint64_t)backup_analysisRecordsModifiedSinceDate:(id)date;
- (unint64_t)countOfAssetsWithMediaAnalysisResultsType:(unint64_t)type;
- (unint64_t)queryEligibleToRetryAssetCountWithProcessingStatus:(unint64_t)status andTaskID:(unint64_t)d;
- (unint64_t)queryEligibleToRetryAssetCountWithTaskID:(unint64_t)d;
- (void)closeDatabase;
- (void)dealloc;
- (void)flush;
@end

@implementation VCPDatabaseWriter

+ (void)deprecatedExceptionForMethodName:(id)name replacedByMethodName:(id)methodName
{
  nameCopy = name;
  methodNameCopy = methodName;
  v7 = +[NSMutableString string];
  [v7 appendFormat:@"[VCPDatabaseWriter %@] is deprecated. ", nameCopy];
  if (methodNameCopy)
  {
    [v7 appendFormat:@"Use [MAD[Change|Fetch]Request %@] instead.", methodNameCopy];
  }

  v8 = [NSException exceptionWithName:@"DeprecatedMethodException" reason:v7 userInfo:0];
  objc_exception_throw(v8);
}

+ (BOOL)isLegacyPersistEnabled
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v2 = objc_opt_class();

  return [v2 _isLegacyPersistEnabledForValidation];
}

- (VCPDatabaseWriter)initWithFilepath:(id)filepath
{
  filepathCopy = filepath;
  v12.receiver = self;
  v12.super_class = VCPDatabaseWriter;
  v6 = [(VCPDatabaseWriter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filepath, filepath);
    v8 = dispatch_queue_create("com.apple.mediaanalysisd.sql", 0);
    sqlSerialQueue = v7->_sqlSerialQueue;
    v7->_sqlSerialQueue = v8;

    v7->_database = 0;
    v7->_transaction = 0;
    v10 = v7;
  }

  return v7;
}

- (VCPDatabaseWriter)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = VCPDatabaseWriter;
  v6 = [(VCPDatabaseWriter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    vcp_mediaAnalysisDatabaseFilepath = [libraryCopy vcp_mediaAnalysisDatabaseFilepath];
    filepath = v7->_filepath;
    v7->_filepath = vcp_mediaAnalysisDatabaseFilepath;

    v10 = dispatch_queue_create("com.apple.mediaanalysisd.sql", 0);
    sqlSerialQueue = v7->_sqlSerialQueue;
    v7->_sqlSerialQueue = v10;

    v7->_database = 0;
    v7->_transaction = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(VCPDatabaseWriter *)self flush];
  v3.receiver = self;
  v3.super_class = VCPDatabaseWriter;
  [(VCPDatabaseWriter *)&v3 dealloc];
}

+ (id)databaseForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];

  return v4;
}

- (int)beginTransaction
{
  if (self->_transaction && MediaAnalysisLogLevel() >= 4)
  {
    v3 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Attempting to re-entrantly begin transaction", v5, 2u);
    }
  }

  result = sqlite3_exec(self->_database, "BEGIN TRANSACTION;", 0, 0, 0);
  if (!result)
  {
    self->_transaction = 1;
  }

  return result;
}

- (int)commitTransaction
{
  if (!self->_transaction && MediaAnalysisLogLevel() >= 4)
  {
    v3 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Attempting to commit unpaired transaction", v5, 2u);
    }
  }

  result = sqlite3_exec(self->_database, "COMMIT TRANSACTION;", 0, 0, 0);
  self->_transaction = 0;
  return result;
}

- (void)closeDatabase
{
  if (self->_transaction)
  {
    [(VCPDatabaseWriter *)self commitTransaction];
  }

  sqlite3_close(self->_database);
  self->_database = 0;
}

- (int)getUserVersion:(int *)version
{
  ppStmt = 0;
  v4 = sqlite3_prepare_v2(self->_database, "PRAGMA user_version;", -1, &ppStmt, 0);
  if (v4 || (v4 = sqlite3_step(ppStmt), v4 != 100))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
    *version = sqlite3_column_int(ppStmt, 0);
  }

  sqlite3_finalize(ppStmt);
  return v5;
}

+ (id)initializationCommand:(int)command
{
  if (command > 0xB)
  {
    v3 = 0;
    goto LABEL_39;
  }

  if (command != 11 && MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 67109376;
      commandCopy = command;
      v10 = 1024;
      v11 = 11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[VCPDatabaseWriter] Upgrading database schema user_version (%d -> %d)", buf, 0xEu);
    }
  }

  v3 = +[NSMutableString string];
  objc_msgSend(v3, "appendString:", @"PRAGMA foreign_keys=ON;CREATE TABLE IF NOT EXISTS Assets(   id                  INTEGER PRIMARY KEY AUTOINCREMENT,    localIdentifier     TEXT,    version             INTEGER,    dateModified        REAL,    dateAnalyzed        REAL,    analysisTypes       INTEGER,    flags               INTEGER,    quality             REAL,");
  if (command)
  {
    [v3 appendString:{@"    masterFingerprint   TEXT, adjustedFingerprint TEXT, "}];
    if (command != 1)
    {
      [v3 appendString:{@"  statsFlags   INTEGER, "}];
    }
  }

  [v3 appendString:{@"    UNIQUE (localIdentifier);CREATE TABLE IF NOT EXISTS Results(   assetId          INTEGER, resultsType      INTEGER, results          BLOB, FOREIGN KEY(assetId) REFERENCES Assets(id) ON DELETE CASCADE, UNIQUE (assetId, resultsType));CREATE TABLE IF NOT EXISTS Blacklist(   id               INTEGER PRIMARY KEY AUTOINCREMENT, localIdentifier  TEXT, date             REAL, count            INTEGER, UNIQUE (localIdentifier));CREATE TABLE IF NOT EXISTS KeyValueStore(   id               INTEGER PRIMARY KEY AUTOINCREMENT, key              TEXT, value            INTEGER, UNIQUE (key));"}]);
  if (command <= 4)
  {
    [v3 appendString:@"DROP TABLE IF EXISTS ChangeTokens;"];
  }

  objc_msgSend(v3, "appendString:", @"CREATE TABLE IF NOT EXISTS ChangeTokens(   id               INTEGER PRIMARY KEY AUTOINCREMENT,    tokenID          INTEGER,    tokenType        INTEGER,    tokenData        BLOB,    date             REAL,    version          INTEGER,    UNIQUE (tokenID, tokenType));CREATE TABLE IF NOT EXISTS ProcessingStatus(   id               INTEGER PRIMARY KEY AUTOINCREMENT,    taskID           INTEGER,    localIdentifier  TEXT,");
  if (command >= 3)
  {
    [v3 appendString:{@"    lastAttemptDate  REAL, nextAttemptDate  REAL, "}];
    if (command == 11)
    {
      [v3 appendString:{@"    errorCode   INTEGER, errorLine   INTEGER, "}];
    }

    else if (command < 9)
    {
      goto LABEL_19;
    }

    v6 = @"    mediaType       INTEGER,    mediaSubtypes   INTEGER,";
  }

  else
  {
    v6 = @"    date             REAL,";
  }

  [v3 appendString:v6];
LABEL_19:
  [v3 appendString:{@"    attempts         INTEGER, status           INTEGER, UNIQUE (taskID, localIdentifier);CREATE TABLE IF NOT EXISTS BackgroundActivitySchedulingHistory(   id               INTEGER PRIMARY KEY AUTOINCREMENT, activityID       INTEGER, startTime        REAL, duration         REAL, exitStatus       INTEGER, ")}];
  if (command >= 0xA)
  {
    [v3 appendString:{@"sessionLog       TEXT, "}];
  }

  [v3 appendString:{@"    UNIQUE (activityID, startTime);CREATE TABLE IF NOT EXISTS BackgroundAnalysisProgressHistory(   id                  INTEGER PRIMARY KEY AUTOINCREMENT, activityID          INTEGER, analysisSubtype     INTEGER, storeDate           REAL, version             INTEGER, processedAssetCount INTEGER, totalAssetCount     INTEGER);"}]);
  objc_msgSend(v3, "appendString:", @"CREATE TABLE IF NOT EXISTS MomentsScheduledAssets(   id               INTEGER PRIMARY KEY AUTOINCREMENT,    taskID           INTEGER,    localIdentifier  TEXT,");
  if (command >= 7)
  {
    [v3 appendString:{@"    requestDate      REAL, "}];
  }

  [v3 appendString:{@"    UNIQUE (taskID, localIdentifier);"}]);
  if (!command)
  {
    [v3 appendString:@"ALTER TABLE Assets ADD COLUMN masterFingerprint TEXT;ALTER TABLE Assets ADD COLUMN adjustedFingerprint TEXT;"];
    goto LABEL_32;
  }

  if (command == 1)
  {
LABEL_32:
    [v3 appendString:@"ALTER TABLE Assets ADD COLUMN statsFlags INTEGER;"];
    goto LABEL_33;
  }

  if (command <= 2)
  {
LABEL_33:
    [v3 appendString:@"ALTER TABLE ProcessingStatus RENAME COLUMN date TO lastAttemptDate;"];
    [v3 appendString:@"ALTER TABLE ProcessingStatus ADD COLUMN nextAttemptDate REAL DEFAULT 0.0;"];
    goto LABEL_34;
  }

  if (command <= 6)
  {
LABEL_34:
    [v3 appendString:@"ALTER TABLE MomentsScheduledAssets ADD COLUMN requestDate REAL DEFAULT 0.0;"];
    goto LABEL_35;
  }

  if (command <= 8)
  {
LABEL_35:
    [v3 appendString:@"ALTER TABLE ProcessingStatus ADD COLUMN mediaType INTEGER DEFAULT 0;ALTER TABLE ProcessingStatus ADD COLUMN mediaSubtypes INTEGER DEFAULT 0;"];
    goto LABEL_36;
  }

  if (command != 9)
  {
    if (command == 11)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 appendString:@"ALTER TABLE BackgroundActivitySchedulingHistory ADD COLUMN sessionLog TEXT;"];
LABEL_37:
  [v3 appendString:@"ALTER TABLE ProcessingStatus ADD COLUMN errorCode INTEGER DEFAULT 0;ALTER TABLE ProcessingStatus ADD COLUMN errorLine INTEGER DEFAULT 0;"];
LABEL_38:
  [v3 appendFormat:@"PRAGMA user_version=%lu;", 11];
  [v3 appendString:@"PRAGMA journal_mode=WAL;PRAGMA page_size=4096;PRAGMA max_page_count=524288;"];
LABEL_39:

  return v3;
}

- (int)openDatabase
{
  v34 = 0;
  v3 = +[NSFileManager defaultManager];
  stringByDeletingLastPathComponent = [(NSString *)self->_filepath stringByDeletingLastPathComponent];
  if (([v3 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v34] & 1) == 0)
  {
    v39 = NSFilePosixPermissions;
    v5 = [NSNumber numberWithShort:493];
    v40 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v7 = [v3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v6 error:0];

    if ((v7 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v14 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Failed to create database directory", buf, 2u);
        }
      }

      goto LABEL_30;
    }
  }

  v8 = [v3 fileExistsAtPath:self->_filepath];
  if (v8)
  {
    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[VCPDatabaseWriter] Database file does not exist, creating one", buf, 2u);
    }
  }

  v37 = NSFileProtectionKey;
  v38 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v10 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  if (([v3 createFileAtPath:self->_filepath contents:0 attributes:v10] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v17 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "Failed to create database", buf, 2u);
      }
    }

LABEL_30:
    busy = -23;
    goto LABEL_31;
  }

LABEL_9:
  v33 = 11;
  busy = sqlite3_open([(NSString *)self->_filepath UTF8String], &self->_database);
  if (busy)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_20;
    }

    v12 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v12))
    {
      goto LABEL_20;
    }

    *buf = 67109120;
    LODWORD(v36) = busy;
    v13 = "[VCPDatabaseWriter] Failed to open database: %d";
LABEL_13:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v13, buf, 8u);
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  busy = sqlite3_busy_handler(self->_database, sub_10003C568, 0);
  if (busy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100054B1C(busy);
    }

    goto LABEL_20;
  }

  if (v8)
  {
    busy = [(VCPDatabaseWriter *)self getUserVersion:&v33];
    if (busy)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_20;
      }

      v12 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v12))
      {
        goto LABEL_20;
      }

      *buf = 67109120;
      LODWORD(v36) = busy;
      v13 = "[VCPDatabaseWriter] Failed to query database version: %d";
      goto LABEL_13;
    }
  }

  v19 = [VCPDatabaseWriter initializationCommand:v33];
  v20 = v19;
  if (!v19)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v27 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        *buf = 67109120;
        LODWORD(v36) = v33;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[VCPDatabaseWriter] Invalid database version %d", buf, 8u);
      }
    }

    v15 = 0;
    busy = -23;
    goto LABEL_21;
  }

  database = self->_database;
  v22 = v19;
  v23 = sqlite3_exec(database, [v20 UTF8String], 0, 0, 0);
  if (v23)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v24 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        *buf = 67109120;
        LODWORD(v36) = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[VCPDatabaseWriter] Failed to create database tables: %d", buf, 8u);
      }
    }
  }

  if ((v8 & 1) == 0)
  {
    busy = [(VCPDatabaseWriter *)self beginTransaction];
    if (busy)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_81;
      }

      v25 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v25))
      {
        goto LABEL_81;
      }

      *buf = 0;
      v26 = "[VCPDatabaseWriter] Failed to begin transaction for analytic metrics table initialization";
      goto LABEL_59;
    }

    busy = [(VCPDatabaseWriter *)self _setValue:0 forKey:@"NumberOfTimesScheduledDatabaseCreation"];
    if (busy)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_81;
      }

      v30 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v30))
      {
        goto LABEL_81;
      }

      *buf = 138412290;
      v36 = @"NumberOfTimesScheduledDatabaseCreation";
      v26 = "[VCPDatabaseWriter] Failed to set %@ to 0";
    }

    else
    {
      busy = [(VCPDatabaseWriter *)self _setValue:0 forKey:@"TotalAnalyzingTimeDatabaseCreation"];
      if (busy)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_81;
        }

        v30 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v30))
        {
          goto LABEL_81;
        }

        *buf = 138412290;
        v36 = @"TotalAnalyzingTimeDatabaseCreation";
        v26 = "[VCPDatabaseWriter] Failed to set %@ to 0";
      }

      else
      {
        v31 = +[NSDate now];
        [v31 timeIntervalSinceReferenceDate];
        busy = [(VCPDatabaseWriter *)self _setValue:v32 forKey:@"DailyProcessTimeStamp"];

        if (!busy)
        {
          busy = [(VCPDatabaseWriter *)self commitTransaction];
          if (!busy)
          {
            goto LABEL_43;
          }

          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_81;
          }

          v25 = VCPLogToOSLogType[3];
          if (!os_log_type_enabled(&_os_log_default, v25))
          {
            goto LABEL_81;
          }

          *buf = 0;
          v26 = "[VCPDatabaseWriter] Failed to commit transaction for analytic metrics table initialization";
LABEL_59:
          v28 = v25;
          v29 = 2;
LABEL_60:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v28, v26, buf, v29);
LABEL_81:
          v15 = v20;
LABEL_21:
          if (MediaAnalysisLogLevel() >= 3)
          {
            v16 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v16))
            {
              *buf = 67109120;
              LODWORD(v36) = busy;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[VCPDatabaseWriter] Error occurred when opening database: %d", buf, 8u);
            }
          }

          [(VCPDatabaseWriter *)self closeDatabase];
          goto LABEL_25;
        }

        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_81;
        }

        v30 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v30))
        {
          goto LABEL_81;
        }

        *buf = 138412290;
        v36 = @"DailyProcessTimeStamp";
        v26 = "[VCPDatabaseWriter] Failed to set %@ as now";
      }
    }

    v28 = v30;
    v29 = 12;
    goto LABEL_60;
  }

LABEL_43:
  busy = [(VCPDatabaseWriter *)self _updateOperatingSystemVersion];
  if (busy)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_81;
    }

    v25 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v25))
    {
      goto LABEL_81;
    }

    *buf = 0;
    v26 = "[VCPDatabaseWriter] Failed to check/update OS version";
    goto LABEL_59;
  }

  busy = [(VCPDatabaseWriter *)self _updateAnalysisInfoOnAnalysisVersionChange];
  if (busy)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_81;
    }

    v25 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v25))
    {
      goto LABEL_81;
    }

    *buf = 0;
    v26 = "[VCPDatabaseWriter] Failed to check/update analysis versions";
    goto LABEL_59;
  }

  if (v23)
  {
    v15 = v20;
    busy = v23;
    goto LABEL_21;
  }

  busy = 0;
  v15 = v20;
LABEL_25:

LABEL_31:
  return busy;
}

- (int)_updateAnalysisInfoWithCurrentVersion:(int)version andTimestamp:(int64_t)timestamp forTaskID:(unint64_t)d
{
  v9 = VCPVersionKeyForTask();
  v10 = VCPStartTimestampKeyForTask();
  v59 = VCPPercentCompleteTimestampKeyForTask();
  v58 = VCPPercentCompleteTimestampKeyForTask();
  v11 = VCPPercentCompleteTimestampKeyForTask();
  v12 = VCPPercentCompleteTimestampKeyForTask();
  v13 = VCPPercentCompleteTimestampKeyForTask();
  v14 = VCPPercentCompleteTimestampKeyForTask();
  v57 = v14;
  v56 = VCPBGSTCheckpointTimestampKeyForTask();
  v55 = VCPBGSTCheckpointTimestampKeyForTask();
  if (!v9 || !v10 || !v59 || !v58 || !v11 || !v12 || !v13 || !v14)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 134217984;
        *v64 = d;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "No corresponding keys found for taskID %lu", buf, 0xCu);
      }
    }

    v15 = -50;
    goto LABEL_19;
  }

  v62 = 0;
  v15 = [(VCPDatabaseWriter *)self _queryValue:&v62 forKey:v9];
  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v16 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412290;
        *v64 = v9;
        v17 = "[VCPDatabaseWriter] Failed to query analysis version for %@";
LABEL_13:
        v18 = v16;
        v19 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, v17, buf, v19);
        goto LABEL_19;
      }
    }

    goto LABEL_19;
  }

  if (v62 == version)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v54 = v10;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v22 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      *buf = 134218240;
      *v64 = v62;
      *&v64[8] = 1024;
      *&v64[10] = version;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "Analysis version changed from %lld to %d", buf, 0x12u);
    }
  }

  v10 = v54;
  v15 = [(VCPDatabaseWriter *)self _setValue:version forKey:v9];
  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 67109378;
        *v64 = version;
        *&v64[4] = 2112;
        *&v64[6] = v9;
        v17 = "[VCPDatabaseWriter] Failed to set analysis version %d for %@";
        v18 = v23;
        v19 = 18;
        goto LABEL_14;
      }
    }

    goto LABEL_19;
  }

  v15 = [(VCPDatabaseWriter *)self _setValue:timestamp forKey:v54];
  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v24 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        *buf = 134218242;
        *v64 = timestamp;
        *&v64[8] = 2112;
        *&v64[10] = v54;
        v17 = "[VCPDatabaseWriter] Failed to set timestamp %lld for %@";
        v18 = v24;
        v19 = 22;
        goto LABEL_14;
      }
    }

    goto LABEL_19;
  }

  v15 = [(VCPDatabaseWriter *)self _removeKey:v59];
  if (!v15)
  {
    v15 = [(VCPDatabaseWriter *)self _removeKey:v58];
    if (v15)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v16 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 138412290;
          *v64 = v58;
          v17 = "[VCPDatabaseWriter] Failed to remove complete timestamp for %@";
          goto LABEL_13;
        }
      }

      goto LABEL_19;
    }

    v15 = [(VCPDatabaseWriter *)self _removeKey:v11];
    if (v15)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v16 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 138412290;
          *v64 = v11;
          v17 = "[VCPDatabaseWriter] Failed to remove complete timestamp for %@";
          goto LABEL_13;
        }
      }

      goto LABEL_19;
    }

    v15 = [(VCPDatabaseWriter *)self _removeKey:v12];
    if (v15)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v16 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 138412290;
          *v64 = v12;
          v17 = "[VCPDatabaseWriter] Failed to remove complete_with_sticky_failure timestamp for %@";
          goto LABEL_13;
        }
      }

      goto LABEL_19;
    }

    v15 = [(VCPDatabaseWriter *)self _removeKey:v13];
    if (v15)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v16 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 138412290;
          *v64 = v13;
          v17 = "[VCPDatabaseWriter] Failed to remove complete_with_sticky_failure timestamp for %@";
          goto LABEL_13;
        }
      }

      goto LABEL_19;
    }

    v15 = [(VCPDatabaseWriter *)self _removeKey:v57];
    if (v15)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_67;
      }

      v25 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v25))
      {
        goto LABEL_67;
      }

      *buf = 138412290;
      *v64 = v57;
      v26 = "[VCPDatabaseWriter] Failed to remove complete_with_sticky_failure timestamp for %@";
      goto LABEL_65;
    }

    v15 = [(VCPDatabaseWriter *)self _removeKey:v56];
    if (v15)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_67;
      }

      v25 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v25))
      {
        goto LABEL_67;
      }

      *buf = 138412290;
      *v64 = v56;
      v26 = "[VCPDatabaseWriter] Failed to remove checkpoint timestamp for %@";
      goto LABEL_65;
    }

    v15 = [(VCPDatabaseWriter *)self _removeKey:v55];
    if (v15)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_67;
      }

      v25 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v25))
      {
        goto LABEL_67;
      }

      *buf = 138412290;
      *v64 = v55;
      v26 = "[VCPDatabaseWriter] Failed to remove checkpoint_with_sticky_failure timestamp for %@";
      goto LABEL_65;
    }

    if (d != 1)
    {
      if (d == 3)
      {
        v28 = VCPKeyValuePrioritizedFaceAnalysisCompleteTimestamp;
        v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValuePrioritizedFaceAnalysisCompleteTimestamp];
        if (v15)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_67;
          }

          v25 = VCPLogToOSLogType[3];
          if (!os_log_type_enabled(&_os_log_default, v25))
          {
            goto LABEL_67;
          }

          *buf = 138412290;
          *v64 = v28;
          v26 = "[VCPDatabaseWriter] Failed to remove complete timestamp for %@";
          goto LABEL_65;
        }

        v30 = VCPKeyValuePrioritizedFaceCheckpointReportedTimestamp;
        v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValuePrioritizedFaceCheckpointReportedTimestamp];
        if (v15)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_67;
          }

          v25 = VCPLogToOSLogType[3];
          if (!os_log_type_enabled(&_os_log_default, v25))
          {
            goto LABEL_67;
          }

          *buf = 138412290;
          *v64 = v30;
          v26 = "[VCPDatabaseWriter] Failed to remove checkpoint timestamp for %@";
          goto LABEL_65;
        }

        v32 = VCPKeyValuePrioritizedFaceAnalysisCompleteWithFailureTimestamp;
        v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValuePrioritizedFaceAnalysisCompleteWithFailureTimestamp];
        if (v15)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_67;
          }

          v25 = VCPLogToOSLogType[3];
          if (!os_log_type_enabled(&_os_log_default, v25))
          {
            goto LABEL_67;
          }

          *buf = 138412290;
          *v64 = v32;
          v26 = "[VCPDatabaseWriter] Failed to remove complete_with_failure timestamp for %@";
          goto LABEL_65;
        }

        v34 = VCPKeyValuePrioritizedFaceCheckpointWithFailureReportedTimestamp;
        v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValuePrioritizedFaceCheckpointWithFailureReportedTimestamp];
        if (v15)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_67;
          }

          v25 = VCPLogToOSLogType[3];
          if (!os_log_type_enabled(&_os_log_default, v25))
          {
            goto LABEL_67;
          }

          *buf = 138412290;
          *v64 = v34;
          v26 = "[VCPDatabaseWriter] Failed to remove checkpoint_with_failure timestamp for %@";
          goto LABEL_65;
        }

        v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValuePersonalizationCheckpointReportedTimestamp];
        if (v15)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_67;
          }

          v25 = VCPLogToOSLogType[3];
          if (!os_log_type_enabled(&_os_log_default, v25))
          {
            goto LABEL_67;
          }

          *buf = 138412290;
          *v64 = v34;
          v26 = "[VCPDatabaseWriter] Failed to remove personalization checkpoint timestamp for %@";
          goto LABEL_65;
        }
      }

LABEL_114:
      if (MediaAnalysisLogLevel() >= 7)
      {
        v38 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v38))
        {
          *buf = 138412802;
          *v64 = v9;
          *&v64[8] = 1024;
          *&v64[10] = version;
          *&v64[14] = 2048;
          *&v64[16] = timestamp;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "Updated %@ with %d (timestamp: %lld)", buf, 0x1Cu);
        }
      }

      v15 = [(VCPDatabaseWriter *)self _removeAllProcessingStatusForTaskID:d];
      if (v15)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_67;
        }

        v39 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v39))
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (d != 1 || (v15 = [(VCPDatabaseWriter *)self _removeAllProcessingStatusForTaskID:255]) == 0)
        {
          [MADProgressManager resetProcessingCheckpointForTask:d];
          v60 = 0;
          v61 = 0;
          v41 = MajorOSVersionNumberKey;
          v15 = [(VCPDatabaseWriter *)self _queryValue:&v61 forKey:MajorOSVersionNumberKey];
          if (v15)
          {
            if (MediaAnalysisLogLevel() < 3)
            {
              goto LABEL_67;
            }

            v42 = VCPLogToOSLogType[3];
            if (!os_log_type_enabled(&_os_log_default, v42))
            {
              goto LABEL_67;
            }

            *buf = 138412290;
            *v64 = v41;
            v26 = "[VCPDatabaseWriter] Failed to query major os version for %@";
          }

          else
          {
            v43 = MinorOSVersionNumberKey;
            v15 = [(VCPDatabaseWriter *)self _queryValue:&v60 forKey:MinorOSVersionNumberKey];
            if (!v15)
            {
              v44 = v61;
              v45 = VCPOSMajorOfLastVersionUpdateKeyForTask();
              v15 = [(VCPDatabaseWriter *)self _setValue:v44 forKey:v45];

              if (v15)
              {
                if (MediaAnalysisLogLevel() >= 3)
                {
                  v46 = VCPLogToOSLogType[3];
                  if (os_log_type_enabled(&_os_log_default, v46))
                  {
                    v47 = v61;
                    v48 = VCPOSMajorOfLastVersionUpdateKeyForTask();
                    *buf = 134218242;
                    *v64 = v47;
                    *&v64[8] = 2112;
                    *&v64[10] = v48;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "[VCPDatabaseWriter] Failed to set major os version of analysis version update %lld for %@", buf, 0x16u);
                  }
                }
              }

              else
              {
                v49 = v60;
                v50 = VCPOSMinorOfLastVersionUpdateKeyForTask();
                v15 = [(VCPDatabaseWriter *)self _setValue:v49 forKey:v50];

                if (v15)
                {
                  if (MediaAnalysisLogLevel() >= 3)
                  {
                    v51 = VCPLogToOSLogType[3];
                    if (os_log_type_enabled(&_os_log_default, v51))
                    {
                      v52 = v60;
                      v53 = VCPOSMinorOfLastVersionUpdateKeyForTask();
                      *buf = 134218242;
                      *v64 = v52;
                      *&v64[8] = 2112;
                      *&v64[10] = v53;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "[VCPDatabaseWriter] Failed to set minor os version of analysis version update %lld for %@", buf, 0x16u);
                    }
                  }
                }
              }

              goto LABEL_67;
            }

            if (MediaAnalysisLogLevel() < 3 || (v42 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v42)))
            {
LABEL_67:
              v10 = v54;
              goto LABEL_19;
            }

            *buf = 138412290;
            *v64 = v43;
            v26 = "[VCPDatabaseWriter] Failed to query minor os version for %@";
          }

          v27 = v42;
LABEL_66:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, v26, buf, 0xCu);
          goto LABEL_67;
        }

        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_67;
        }

        v39 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v39))
        {
          goto LABEL_67;
        }
      }

      v40 = VCPTaskIDDescription();
      *buf = 138412290;
      *v64 = v40;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[VCPDatabaseWriter] Unable to drop processing status for %@", buf, 0xCu);

      v10 = v54;
      goto LABEL_19;
    }

    v29 = VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp;
    v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp];
    if (v15)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_67;
      }

      v25 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v25))
      {
        goto LABEL_67;
      }

      *buf = 138412290;
      *v64 = v29;
      v26 = "[VCPDatabaseWriter] Failed to remove enablement timestamp for %@";
    }

    else
    {
      v31 = VCPKeyValueMediaAnalysisImagePriority1CompleteTimestamp;
      v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValueMediaAnalysisImagePriority1CompleteTimestamp];
      if (v15)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_67;
        }

        v25 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v25))
        {
          goto LABEL_67;
        }

        *buf = 138412290;
        *v64 = v31;
        v26 = "[VCPDatabaseWriter] Failed to remove complete timestamp for %@";
      }

      else
      {
        v33 = VCPKeyValueMediaAnalysisImagePriority1CheckpointReportedTimestamp;
        v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValueMediaAnalysisImagePriority1CheckpointReportedTimestamp];
        if (v15)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_67;
          }

          v25 = VCPLogToOSLogType[3];
          if (!os_log_type_enabled(&_os_log_default, v25))
          {
            goto LABEL_67;
          }

          *buf = 138412290;
          *v64 = v33;
          v26 = "[VCPDatabaseWriter] Failed to remove checkpoint timestamp for %@";
        }

        else
        {
          v35 = VCPKeyValueMediaAnalysisImagePriority1CheckpointWithFailureReportedTimestamp;
          v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValueMediaAnalysisImagePriority1CheckpointWithFailureReportedTimestamp];
          if (v15)
          {
            if (MediaAnalysisLogLevel() < 3)
            {
              goto LABEL_67;
            }

            v25 = VCPLogToOSLogType[3];
            if (!os_log_type_enabled(&_os_log_default, v25))
            {
              goto LABEL_67;
            }

            *buf = 138412290;
            *v64 = v35;
            v26 = "[VCPDatabaseWriter] Failed to remove checkpoint_with_failure timestamp for %@";
          }

          else
          {
            v36 = VCPKeyValueMediaAnalysisImageCheckpointReportedTimestamp;
            v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValueMediaAnalysisImageCheckpointReportedTimestamp];
            if (v15)
            {
              if (MediaAnalysisLogLevel() < 3)
              {
                goto LABEL_67;
              }

              v25 = VCPLogToOSLogType[3];
              if (!os_log_type_enabled(&_os_log_default, v25))
              {
                goto LABEL_67;
              }

              *buf = 138412290;
              *v64 = v36;
              v26 = "[VCPDatabaseWriter] Failed to remove complete timestamp for %@";
            }

            else
            {
              v37 = VCPKeyValueMediaAnalysisImageCheckpointWithFailureReportedTimestamp;
              v15 = [(VCPDatabaseWriter *)self _removeKey:VCPKeyValueMediaAnalysisImageCheckpointWithFailureReportedTimestamp];
              if (!v15)
              {
                goto LABEL_114;
              }

              if (MediaAnalysisLogLevel() < 3)
              {
                goto LABEL_67;
              }

              v25 = VCPLogToOSLogType[3];
              if (!os_log_type_enabled(&_os_log_default, v25))
              {
                goto LABEL_67;
              }

              *buf = 138412290;
              *v64 = v37;
              v26 = "[VCPDatabaseWriter] Failed to remove checkpoint_with_failure timestamp for %@";
            }
          }
        }
      }
    }

LABEL_65:
    v27 = v25;
    goto LABEL_66;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v16 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 138412290;
      *v64 = v59;
      v17 = "[VCPDatabaseWriter] Failed to remove complete timestamp for %@";
      goto LABEL_13;
    }
  }

LABEL_19:

  return v15;
}

- (int)_updateAnalysisInfoOnAnalysisVersionChange
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Checking KeyValueStore for analysis versions ...", buf, 2u);
    }
  }

  v4 = +[NSDate now];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  beginTransaction = [(VCPDatabaseWriter *)self beginTransaction];
  if (beginTransaction)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[VCPDatabaseWriter] Failed to begin transaction for analysis version check/update", buf, 2u);
      }
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [&off_100296068 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(&off_100296068);
          }

          beginTransaction = -[VCPDatabaseWriter _updateAnalysisInfoWithCurrentVersion:andTimestamp:forTaskID:](self, "_updateAnalysisInfoWithCurrentVersion:andTimestamp:forTaskID:", VCPVersionForTask(), v6, [*(*(&v15 + 1) + 8 * i) intValue]);
          if (beginTransaction)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v12 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v12))
              {
                v13 = VCPTaskIDDescription();
                *buf = 138412290;
                v20 = v13;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[VCPDatabaseWriter] Failed to check/update analysis version for %@", buf, 0xCu);
              }
            }

            return beginTransaction;
          }
        }

        v9 = [&off_100296068 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    return [(VCPDatabaseWriter *)self commitTransaction];
  }

  return beginTransaction;
}

- (int)_updateOperatingSystemVersion
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v3 = +[NSProcessInfo processInfo];
  v4 = v3;
  if (v3)
  {
    [v3 operatingSystemVersion];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v6 = v40;
  v5 = v41;
  v39 = 0;
  v7 = MajorOSVersionNumberKey;
  beginTransaction = [(VCPDatabaseWriter *)self _queryValue:&v39 forKey:MajorOSVersionNumberKey];
  if (beginTransaction)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      return beginTransaction;
    }

    v9 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v9))
    {
      return beginTransaction;
    }

    *buf = 138412290;
    v45 = v7;
    v10 = "[VCPDatabaseWriter] Failed to query major os version for %@";
LABEL_12:
    v12 = v9;
    v13 = 12;
    goto LABEL_13;
  }

  v38 = 0;
  v11 = MinorOSVersionNumberKey;
  beginTransaction = [(VCPDatabaseWriter *)self _queryValue:&v38 forKey:MinorOSVersionNumberKey];
  if (beginTransaction)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      return beginTransaction;
    }

    v9 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v9))
    {
      return beginTransaction;
    }

    *buf = 138412290;
    v45 = v11;
    v10 = "[VCPDatabaseWriter] Failed to query minor os version for %@";
    goto LABEL_12;
  }

  if (v39 == v6 && v38 == v5)
  {
    return 0;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v14 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      *buf = 134218752;
      v45 = v39;
      v46 = 2048;
      v47 = v38;
      v48 = 2048;
      v49 = v6;
      v50 = 2048;
      v51 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[VCPDatabaseWriter] Operating System version changed from %lld.%lld to %lld.%lld", buf, 0x2Au);
    }
  }

  beginTransaction = [(VCPDatabaseWriter *)self beginTransaction];
  if (beginTransaction)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      return beginTransaction;
    }

    v15 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v15))
    {
      return beginTransaction;
    }

    *buf = 0;
    v10 = "[VCPDatabaseWriter] Failed to begin transaction for os version check/update";
    v12 = v15;
    v13 = 2;
LABEL_13:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v10, buf, v13);
    return beginTransaction;
  }

  beginTransaction = [(VCPDatabaseWriter *)self _setValue:v6 forKey:v7];
  if (beginTransaction)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      return beginTransaction;
    }

    v9 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v9))
    {
      return beginTransaction;
    }

    *buf = 138412290;
    v45 = v7;
    v10 = "[VCPDatabaseWriter] Failed to set major os version for %@";
    goto LABEL_12;
  }

  beginTransaction = [(VCPDatabaseWriter *)self _setValue:v5 forKey:v11];
  if (beginTransaction)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      return beginTransaction;
    }

    v9 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v9))
    {
      return beginTransaction;
    }

    *buf = 138412290;
    v45 = v11;
    v10 = "[VCPDatabaseWriter] Failed to set minor os version for %@";
    goto LABEL_12;
  }

  v16 = +[NSDate now];
  [v16 timeIntervalSinceReferenceDate];
  v18 = OSVersionUpdateTimestampKey;
  beginTransaction = [(VCPDatabaseWriter *)self _setValue:v17 forKey:OSVersionUpdateTimestampKey];

  if (beginTransaction)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      return beginTransaction;
    }

    v9 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v9))
    {
      return beginTransaction;
    }

    *buf = 138412290;
    v45 = v18;
    v10 = "[VCPDatabaseWriter] Failed to set os version timestamp for %@";
    goto LABEL_12;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = [&off_100296080 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (!v19)
  {
    goto LABEL_57;
  }

  v21 = *v35;
  type = VCPLogToOSLogType[3];
  v32 = VCPKeyValuePrioritizedFaceCheckpointReportedTimestamp;
  v31 = VCPKeyValuePrioritizedFaceCheckpointWithFailureReportedTimestamp;
  v30 = VCPKeyValuePersonalizationCheckpointReportedTimestamp;
  *&v20 = 134217984;
  v29 = v20;
  while (2)
  {
    for (i = 0; i != v19; i = i + 1)
    {
      if (*v35 != v21)
      {
        objc_enumerationMutation(&off_100296080);
      }

      intValue = [*(*(&v34 + 1) + 8 * i) intValue];
      v24 = VCPBGSTCheckpointTimestampKeyForTask();
      if (!v24 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = v29;
        v45 = intValue;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "No corresponding checkpoint key found for taskID %lu", buf, 0xCu);
      }

      beginTransaction = [(VCPDatabaseWriter *)self _removeKey:v24];
      if (beginTransaction)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v45 = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[VCPDatabaseWriter] Failed to remove checkpoint timestamp for %@", buf, 0xCu);
        }

        goto LABEL_77;
      }

      v25 = VCPBGSTCheckpointTimestampKeyForTask();
      if (!v25 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = v29;
        v45 = intValue;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "No corresponding checkpoint_with_failure key found for taskID %lu", buf, 0xCu);
      }

      beginTransaction = [(VCPDatabaseWriter *)self _removeKey:v25];
      if (beginTransaction)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v45 = v25;
          v26 = "[VCPDatabaseWriter] Failed to remove checkpoint_with_failure timestamp for %@";
          v27 = type;
          goto LABEL_75;
        }

LABEL_76:

LABEL_77:
        return beginTransaction;
      }

      if (intValue == 3)
      {
        beginTransaction = [(VCPDatabaseWriter *)self _removeKey:v32];
        if (beginTransaction)
        {
          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(&_os_log_default, type))
          {
            goto LABEL_76;
          }

          *buf = 138412290;
          v45 = v32;
          v26 = "[VCPDatabaseWriter] Failed to remove complete timestamp for %@";
        }

        else
        {
          beginTransaction = [(VCPDatabaseWriter *)self _removeKey:v31];
          if (beginTransaction)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(&_os_log_default, type))
            {
              goto LABEL_76;
            }

            *buf = 138412290;
            v45 = v31;
            v26 = "[VCPDatabaseWriter] Failed to remove complete_with_failure timestamp for %@";
          }

          else
          {
            beginTransaction = [(VCPDatabaseWriter *)self _removeKey:v30];
            if (!beginTransaction)
            {
              goto LABEL_55;
            }

            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(&_os_log_default, type))
            {
              goto LABEL_76;
            }

            *buf = 138412290;
            v45 = v31;
            v26 = "[VCPDatabaseWriter] Failed to remove personalization checkpoint timestamp for %@";
          }
        }

        v27 = type;
LABEL_75:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, v26, buf, 0xCu);
        goto LABEL_76;
      }

LABEL_55:
    }

    v19 = [&off_100296080 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_57:
  beginTransaction = [(VCPDatabaseWriter *)self commitTransaction];
  if (!beginTransaction)
  {
    return 0;
  }

  return beginTransaction;
}

- (int)_queryValue:(int64_t *)value forKey:(id)key
{
  keyCopy = key;
  ppStmt = 0;
  *value = 0;
  v7 = sqlite3_prepare_v2(self->_database, "SELECT value FROM KeyValueStore WHERE key = (?);", -1, &ppStmt, 0);
  if (v7)
  {
    goto LABEL_23;
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
    goto LABEL_23;
  }

  v16 = sqlite3_expanded_sql(ppStmt);
  if (v16)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v20 = 1024;
      v21 = 726;
      v22 = 2080;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v16);
  }

  v7 = sqlite3_step(ppStmt);
  if (v7 == 100)
  {
    *value = sqlite3_column_int64(ppStmt, 0);
    v7 = sqlite3_step(ppStmt);
  }

  v14 = 0;
  if (v7)
  {
    if (v7 != 101)
    {
LABEL_23:
      if (MediaAnalysisLogLevel() >= 3)
      {
        v13 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "Failed to query KeyValueStore", buf, 2u);
        }
      }

      v14 = v7;
    }
  }

  sqlite3_finalize(ppStmt);

  return v14;
}

- (int)_setValue:(int64_t)value forKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    ppStmt = 0;
    v7 = sqlite3_prepare_v2(self->_database, "REPLACE INTO KeyValueStore (key, value) VALUES ((?), (?));", -1, &ppStmt, 0);
    if (v7)
    {
      goto LABEL_22;
    }

    v8 = ppStmt;
    v9 = keyCopy;
    v10 = v9;
    v7 = sqlite3_bind_text(v8, 1, [v9 UTF8String], -1, 0);

    if (v7)
    {
      goto LABEL_22;
    }

    v7 = sqlite3_bind_int64(ppStmt, 2, value);
    if (v7)
    {
      goto LABEL_22;
    }

    v14 = sqlite3_expanded_sql(ppStmt);
    if (v14)
    {
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v19 = 1024;
        v20 = 751;
        v21 = 2080;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v14);
    }

    v15 = sqlite3_step(ppStmt);
    v7 = v15;
    v12 = 0;
    if (v15)
    {
      if (v15 != 101)
      {
LABEL_22:
        if (MediaAnalysisLogLevel() >= 3)
        {
          v11 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v11))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Failed to update KeyValueStore", buf, 2u);
          }
        }

        v12 = v7;
      }
    }

    sqlite3_finalize(ppStmt);
  }

  else
  {
    v12 = -50;
  }

  return v12;
}

- (int)_removeKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    ppStmt = 0;
    v5 = sqlite3_prepare_v2(self->_database, "DELETE FROM KeyValueStore WHERE key=(?);", -1, &ppStmt, 0);
    if (!v5)
    {
      v6 = ppStmt;
      v7 = keyCopy;
      v8 = v7;
      v5 = sqlite3_bind_text(v6, 1, [v7 UTF8String], -1, 0);

      if (!v5)
      {
        v9 = sqlite3_expanded_sql(ppStmt);
        if (v9)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v14 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
            v15 = 1024;
            v16 = 766;
            v17 = 2080;
            v18 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v9);
        }

        v10 = sqlite3_step(ppStmt);
        if (v10 == 101)
        {
          v5 = 0;
        }

        else
        {
          v5 = v10;
        }
      }
    }

    sqlite3_finalize(ppStmt);
  }

  else
  {
    v5 = -50;
  }

  return v5;
}

- (int)_removeAllProcessingStatusForTaskID:(unint64_t)d
{
  ppStmt = 0;
  v4 = sqlite3_prepare_v2(self->_database, "DELETE FROM ProcessingStatus WHERE taskID=(?);", -1, &ppStmt, 0);
  if (v4 || (v4 = sqlite3_bind_int64(ppStmt, 1, d)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v7 = sqlite3_expanded_sql(ppStmt);
    if (v7)
    {
      v8 = v7;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v13 = 1024;
        v14 = 780;
        v15 = 2080;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v8);
    }

    v9 = sqlite3_step(ppStmt);
    if (v9 == 101)
    {
      v5 = 0;
    }

    else
    {
      v5 = v9;
    }
  }

  sqlite3_finalize(ppStmt);
  return v5;
}

- (BOOL)shouldPropagateError:(int *)error finalAttempt:(BOOL)attempt
{
  v6 = *error;
  if (*error > 10)
  {
    if (v6 > 13)
    {
      if (v6 == 14)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v17 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v17))
          {
            LOWORD(v21[0]) = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "Database open failure; disk may be full", v21, 2u);
          }
        }

        v10 = -23;
LABEL_38:
        *error = v10;
        return attempt;
      }

      if (v6 != 18)
      {
        goto LABEL_39;
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          LOWORD(v21[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Database data size is too big", v21, 2u);
        }
      }

      v12 = -50;
LABEL_32:
      *error = v12;
      return 1;
    }

    if (v6 == 11)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        return 0;
      }

      v13 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        return 0;
      }

      LOWORD(v21[0]) = 0;
      v14 = "Database is corrupted";
      v15 = v13;
      v16 = 2;
      goto LABEL_42;
    }

    if (v6 != 13)
    {
LABEL_39:
      if (MediaAnalysisLogLevel() < 3)
      {
        return 0;
      }

      v18 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v18))
      {
        return 0;
      }

      v19 = *error;
      v21[0] = 67109120;
      v21[1] = v19;
      v14 = "Unexpected database error (%d)";
      v15 = v18;
      v16 = 8;
LABEL_42:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, v14, v21, v16);
      return 0;
    }

    if (MediaAnalysisLogLevel() < 3 || (v7 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v7)))
    {
LABEL_31:
      v12 = -108;
      goto LABEL_32;
    }

    LOWORD(v21[0]) = 0;
    v8 = "Database or disk full";
LABEL_30:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v8, v21, 2u);
    goto LABEL_31;
  }

  if (v6 > 6)
  {
    if (v6 != 7)
    {
      if (v6 != 10)
      {
        goto LABEL_39;
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v9 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v9))
        {
          LOWORD(v21[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "Database I/O error; disk may be full", v21, 2u);
        }
      }

      v10 = -36;
      goto LABEL_38;
    }

    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_31;
    }

    v7 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v7))
    {
      goto LABEL_31;
    }

    LOWORD(v21[0]) = 0;
    v8 = "Database allocation failed";
    goto LABEL_30;
  }

  if (v6 == -50)
  {
    return 1;
  }

  if (v6 != -23)
  {
    goto LABEL_39;
  }

  return attempt;
}

- (int)executeDatabaseBlock:(id)block fallbackBlock:(id)fallbackBlock write:(BOOL)write
{
  blockCopy = block;
  fallbackBlockCopy = fallbackBlock;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  sqlSerialQueue = self->_sqlSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F160;
  block[3] = &unk_100283B30;
  writeCopy = write;
  block[4] = self;
  v15 = blockCopy;
  v16 = fallbackBlockCopy;
  v17 = &v19;
  v11 = fallbackBlockCopy;
  v12 = blockCopy;
  dispatch_sync(sqlSerialQueue, block);
  LODWORD(sqlSerialQueue) = *(v20 + 6);

  _Block_object_dispose(&v19, 8);
  return sqlSerialQueue;
}

- (int)commit
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003F918;
  v3[3] = &unk_100283B58;
  v3[4] = self;
  return [(VCPDatabaseWriter *)self executeDatabaseBlock:v3 fallbackBlock:0 write:0];
}

- (void)flush
{
  sqlSerialQueue = self->_sqlSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F9BC;
  block[3] = &unk_100283210;
  block[4] = self;
  dispatch_sync(sqlSerialQueue, block);
}

- (unint64_t)_sizeBytes
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 attributesOfItemAtPath:self->_filepath error:0];
  fileSize = [v4 fileSize];

  return fileSize;
}

- (id)creationDate
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"creationDate" replacedByMethodName:0];
    v3 = 0;
  }

  else
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 attributesOfItemAtPath:self->_filepath error:0];
    v3 = [v5 objectForKey:NSFileCreationDate];
  }

  return v3;
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
    v4 = +[NSFileManager defaultManager];
    if ([v4 fileExistsAtPath:self->_filepath])
    {
      v3 = 1;
    }

    else
    {
      v5 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
      vcp_mediaAnalysisBackupFilepath = [v5 vcp_mediaAnalysisBackupFilepath];
      v3 = [v4 fileExistsAtPath:vcp_mediaAnalysisBackupFilepath];
    }
  }

  return v3;
}

- (BOOL)hasOutstandingTransactions
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"hasOutstandingTransactions:" replacedByMethodName:0];
    return 0;
  }

  else
  {
    return self->_transaction;
  }
}

- (id)photoLibrary
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"photoLibrary" replacedByMethodName:0];
    v3 = 0;
  }

  else
  {
    v3 = self->_photoLibrary;
  }

  return v3;
}

- (int)setChangeToken:(id)token forTaskID:(unint64_t)d andChangeTokenType:(unint64_t)type date:(id)date
{
  tokenCopy = token;
  dateCopy = date;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"setChangeToken:forTokenID:andChangeTokenType:date:" replacedByMethodName:@"setChangeToken:tokenID:changeTokenType:date:"];
    v12 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v24 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v25 = 1024;
      v26 = 1035;
      v27 = 2080;
      v28 = "[VCPDatabaseWriter(ChangeTokenOrBookmark) setChangeToken:forTaskID:andChangeTokenType:date:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v22 = 0;
    v13 = [NSKeyedArchiver archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v22];
    v14 = v22;
    if (v13)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100040004;
      v17[3] = &unk_100283B80;
      v17[4] = self;
      dCopy = d;
      typeCopy = type;
      v18 = v13;
      v19 = dateCopy;
      v12 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v17 fallbackBlock:0 write:1];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v15 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          *buf = 138412290;
          v24 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Failed to archive changeToken - %@", buf, 0xCu);
        }
      }

      v12 = -50;
    }
  }

  return v12;
}

- (int)updateChangeToken:(id)token forTaskID:(unint64_t)d andChangeTokenType:(unint64_t)type
{
  tokenCopy = token;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"updateChangeToken:forTaskID:andChangeTokenType:" replacedByMethodName:@"updateChangeToken:taskID:changeTokenType:"];
    v9 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v20 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v21 = 1024;
      v22 = 1068;
      v23 = 2080;
      v24 = "[VCPDatabaseWriter(ChangeTokenOrBookmark) updateChangeToken:forTaskID:andChangeTokenType:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v18 = 0;
    v10 = [NSKeyedArchiver archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v18];
    v11 = v18;
    if (v10)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100040520;
      v14[3] = &unk_100283BA8;
      v14[4] = self;
      v15 = v10;
      dCopy = d;
      typeCopy = type;
      v9 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v14 fallbackBlock:0 write:1];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v12 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v12))
        {
          *buf = 138412290;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "Failed to archive changeToken - %@", buf, 0xCu);
        }
      }

      v9 = -50;
    }
  }

  return v9;
}

- (int)queryChangeToken:(id *)token forTaskID:(unint64_t)d andChangeTokenType:(unint64_t)type
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryChangeToken:forTokenID:andChangeTokenType:" replacedByMethodName:@"fetchChangeToken:tokenID:changeTokenType:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v13 = 1024;
        v14 = 1099;
        v15 = 2080;
        v16 = "[VCPDatabaseWriter(ChangeTokenOrBookmark) queryChangeToken:forTaskID:andChangeTokenType:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    *token = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004088C;
    v10[3] = &unk_100283BD0;
    v10[4] = self;
    v10[5] = d;
    v10[6] = type;
    v10[7] = token;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v10 fallbackBlock:0 write:0];
  }
}

- (int)removeChangeTokenForTaskID:(unint64_t)d andChangeTokenType:(unint64_t)type
{
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"removeChangeTokenForTaskID:andChangeTokenType:" replacedByMethodName:@"removeChangeTokenForTaskID:changeTokenType:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 1151;
        v13 = 2080;
        v14 = "[VCPDatabaseWriter(ChangeTokenOrBookmark) removeChangeTokenForTaskID:andChangeTokenType:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100040F28;
    v8[3] = &unk_100283BF8;
    v8[4] = self;
    v8[5] = d;
    v8[6] = type;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v8 fallbackBlock:0 write:1];
  }
}

- (int)removeAllChangeTokensForTaskID:(unint64_t)d
{
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"removeAllChangeTokensForTaskID:" replacedByMethodName:@"removeAllChangeTokensForTaskID:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v8 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v9 = 1024;
        v10 = 1173;
        v11 = 2080;
        v12 = "[VCPDatabaseWriter(ChangeTokenOrBookmark) removeAllChangeTokensForTaskID:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000411E4;
    v6[3] = &unk_100283C20;
    v6[4] = self;
    v6[5] = d;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v6 fallbackBlock:0 write:1];
  }
}

- (int)setDeletePendingFlag:(BOOL)flag localIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"setDeletePendingFlag:localIdentifier:" replacedByMethodName:0];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v14 = 1024;
      v15 = 1201;
      v16 = 2080;
      v17 = "[VCPDatabaseWriter(Maintenance) setDeletePendingFlag:localIdentifier:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000414E4;
    v9[3] = &unk_100283C48;
    flagCopy = flag;
    v9[4] = self;
    v10 = identifierCopy;
    v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:1];
  }

  return v7;
}

- (int)updateFingerprint:(id)fingerprint forAsset:(id)asset
{
  fingerprintCopy = fingerprint;
  assetCopy = asset;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v17 = 1024;
    v18 = 1227;
    v19 = 2080;
    v20 = "[VCPDatabaseWriter(Maintenance) updateFingerprint:forAsset:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000418EC;
  v12[3] = &unk_100283C70;
  v12[4] = self;
  v8 = fingerprintCopy;
  v13 = v8;
  v9 = assetCopy;
  v14 = v9;
  v10 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v12 fallbackBlock:0 write:1];

  return v10;
}

- (int)updateLocalIdentifer:(id)identifer to:(id)to
{
  identiferCopy = identifer;
  toCopy = to;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"updateLocalIdentifer:to:" replacedByMethodName:0];
    v8 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v14 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v15 = 1024;
      v16 = 1251;
      v17 = 2080;
      v18 = "[VCPDatabaseWriter(Maintenance) updateLocalIdentifer:to:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100041D50;
    v10[3] = &unk_100283C70;
    v10[4] = self;
    v11 = toCopy;
    v12 = identiferCopy;
    v8 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v10 fallbackBlock:0 write:1];
  }

  return v8;
}

- (int)updateDateModifiedForAsset:(id)asset
{
  assetCopy = asset;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"updateDateModifiedForAsset:" replacedByMethodName:0];
    v5 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v11 = 1024;
      v12 = 1276;
      v13 = 2080;
      v14 = "[VCPDatabaseWriter(Maintenance) updateDateModifiedForAsset:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100042198;
    v7[3] = &unk_100283C98;
    v7[4] = self;
    v8 = assetCopy;
    v5 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v7 fallbackBlock:0 write:1];
  }

  return v5;
}

- (int)containsAsset:(id)asset result:(BOOL *)result
{
  assetCopy = asset;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"containsAsset:result:" replacedByMethodName:@"fetchAnalysisWithLocalIdentifier:predicate:"];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v14 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v15 = 1024;
      v16 = 1300;
      v17 = 2080;
      v18 = "[VCPDatabaseWriter(Maintenance) containsAsset:result:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100042640;
    v10[3] = &unk_100283CC0;
    v10[4] = self;
    v11 = assetCopy;
    resultCopy = result;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100042808;
    v9[3] = &unk_100283CE0;
    v9[4] = result;
    v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v10 fallbackBlock:v9 write:0];
  }

  return v7;
}

- (int)queryAssetWithLocalIdentifier:(id)identifier forMediaAnalysisVersion:(id *)version
{
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAssetWithLocalIdentifier:forMediaAnalysisVersion:" replacedByMethodName:@"fetchAnalysisWithLocalIdentifier:predicate:"];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1328;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseWriter(Maintenance) queryAssetWithLocalIdentifier:forMediaAnalysisVersion:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_100042A64;
    v14 = sub_100042A74;
    v15 = &off_1002943E0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100042A7C;
    v10[3] = &unk_100283D08;
    v10[4] = self;
    v11 = identifierCopy;
    v12 = buf;
    v8 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v10 fallbackBlock:&stru_100283D48 write:0];
    v7 = v8;
    if (version && !v8)
    {
      *version = *(*&buf[8] + 40);
    }

    _Block_object_dispose(buf, 8);
  }

  return v7;
}

- (int)deleteAnalysisResultsWithType:(unint64_t)type
{
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"deleteAnalysisResultsWithType:" replacedByMethodName:@"deleteAnalysisResultsWithType:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v8 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v9 = 1024;
        v10 = 1364;
        v11 = 2080;
        v12 = "[VCPDatabaseWriter(Maintenance) deleteAnalysisResultsWithType:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100042DD4;
    v6[3] = &unk_100283C20;
    v6[4] = self;
    v6[5] = type;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v6 fallbackBlock:0 write:1];
  }
}

- (int64_t)compareExistingAnalysis:(id)analysis toNewAnalysis:(id)newAnalysis forAsset:(id)asset
{
  analysisCopy = analysis;
  newAnalysisCopy = newAnalysis;
  assetCopy = asset;
  if ([assetCopy vcp_isAnalysisValid:analysisCopy])
  {
    vcp_version = [analysisCopy vcp_version];
    if (vcp_version <= [newAnalysisCopy vcp_version])
    {
      v13 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v11 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          localIdentifier = [assetCopy localIdentifier];
          v19 = 138412802;
          v20 = localIdentifier;
          v21 = 1024;
          *v22 = [analysisCopy vcp_version];
          *&v22[4] = 1024;
          *&v22[6] = [newAnalysisCopy vcp_version];
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[%@] New analysis version outdated (%d vs %d); discarding", &v19, 0x18u);
        }
      }

      v13 = -1;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v14 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        localIdentifier2 = [assetCopy localIdentifier];
        vcp_dateModified = [analysisCopy vcp_dateModified];
        vcp_dateModified2 = [newAnalysisCopy vcp_dateModified];
        v19 = 138412802;
        v20 = localIdentifier2;
        v21 = 2112;
        *v22 = vcp_dateModified;
        *&v22[8] = 2112;
        v23 = vcp_dateModified2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[%@] Existing analysis from previous modification (%@ vs %@); discarding", &v19, 0x20u);
      }
    }

    v13 = 1;
  }

  return v13;
}

- (int)_deleteAsset:(id)asset
{
  assetCopy = asset;
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(self->_database, "DELETE FROM Assets WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v5)
  {
    v6 = ppStmt;
    v7 = assetCopy;
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v10 = sqlite3_bind_text(v6, 1, [v8 UTF8String], -1, 0);
    }

    else
    {
      v10 = sqlite3_bind_null(v6, 1);
    }

    v5 = v10;

    if (!v5)
    {
      v11 = sqlite3_expanded_sql(ppStmt);
      if (v11)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v17 = 1024;
          v18 = 1417;
          v19 = 2080;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v11);
      }

      v12 = sqlite3_step(ppStmt);
      if (v12 == 101)
      {
        v5 = 0;
      }

      else
      {
        v5 = v12;
      }
    }
  }

  sqlite3_finalize(ppStmt);

  return v5;
}

- (int)_storeProperties:(id)properties forLocalIdentifier:(id)identifier assetId:(int64_t *)id
{
  propertiesCopy = properties;
  identifierCopy = identifier;
  ppStmt = 0;
  vcp_fingerprint = [propertiesCopy vcp_fingerprint];
  v11 = sqlite3_prepare_v2(self->_database, "REPLACE INTO Assets (localIdentifier, version, dateModified, dateAnalyzed, analysisTypes, flags, quality, masterFingerprint, adjustedFingerprint, statsFlags) VALUES ((?), (?), (?), (?), (?), (?), (?), (?), (?), (?));", -1, &ppStmt, 0);
  if (!v11)
  {
    v12 = ppStmt;
    v13 = identifierCopy;
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      v16 = sqlite3_bind_text(v12, 1, [v14 UTF8String], -1, 0);
    }

    else
    {
      v16 = sqlite3_bind_null(v12, 1);
    }

    v11 = v16;

    if (!v11)
    {
      v11 = sqlite3_bind_int(ppStmt, 2, [propertiesCopy vcp_version]);
      if (!v11)
      {
        v17 = ppStmt;
        vcp_dateModified = [propertiesCopy vcp_dateModified];
        v19 = vcp_dateModified;
        if (vcp_dateModified)
        {
          [vcp_dateModified timeIntervalSinceReferenceDate];
          v21 = sqlite3_bind_double(v17, 3, v20);
        }

        else
        {
          v21 = sqlite3_bind_null(v17, 3);
        }

        v11 = v21;

        if (!v11)
        {
          v22 = ppStmt;
          vcp_dateAnalyzed = [propertiesCopy vcp_dateAnalyzed];
          v11 = sub_100040220(v22, 4, vcp_dateAnalyzed);

          if (!v11)
          {
            v11 = sqlite3_bind_int64(ppStmt, 5, [propertiesCopy vcp_types]);
            if (!v11)
            {
              v11 = sqlite3_bind_int(ppStmt, 6, [propertiesCopy vcp_flags]);
              if (!v11)
              {
                v24 = ppStmt;
                [propertiesCopy vcp_quality];
                v11 = sqlite3_bind_double(v24, 7, v25);
                if (!v11)
                {
                  v26 = ppStmt;
                  master = [vcp_fingerprint master];
                  v11 = sub_10003E748(v26, 8, master);

                  if (!v11)
                  {
                    v28 = ppStmt;
                    adjusted = [vcp_fingerprint adjusted];
                    v11 = sub_10003E748(v28, 9, adjusted);

                    if (!v11)
                    {
                      v11 = sqlite3_bind_int64(ppStmt, 10, [propertiesCopy vcp_statsFlags]);
                      if (!v11)
                      {
                        v30 = sqlite3_expanded_sql(ppStmt);
                        if (v30)
                        {
                          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136315650;
                            v35 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
                            v36 = 1024;
                            v37 = 1447;
                            v38 = 2080;
                            v39 = v30;
                            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
                          }

                          sqlite3_free(v30);
                        }

                        v31 = sqlite3_step(ppStmt);
                        if (v31 == 101)
                        {
                          v11 = 0;
                        }

                        else
                        {
                          v11 = v31;
                        }

                        if (id && v31 == 101)
                        {
                          *id = sqlite3_last_insert_rowid(self->_database);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);

  return v11;
}

- (int)_storeResult:(id)result withKey:(id)key forAssetId:(int64_t)id
{
  resultCopy = result;
  keyCopy = key;
  if ([keyCopy isEqualToString:MediaAnalysisKeyFrameResourceResultsKey])
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_15;
    }

    v10 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v10))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v11 = "[VCPDatabaseWriter] Skip storing key frame resource result in MA DB";
    goto LABEL_13;
  }

  if ([keyCopy isEqualToString:MediaAnalysisImageEmbeddingResultsKey])
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_15;
    }

    v10 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v10))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v11 = "[VCPDatabaseWriter] Skip storing image embedding result in MA DB";
    goto LABEL_13;
  }

  if ([keyCopy isEqualToString:MediaAnalysisVideoThumbnailResourcesResultsKey])
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_15;
    }

    v10 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v10))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v11 = "[VCPDatabaseWriter] Skip storing thumbnail resource result in MA DB";
LABEL_13:
    v12 = v10;
    v13 = 2;
LABEL_14:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v11, buf, v13);
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  v16 = MediaAnalysisResultsKeyToType();
  v17 = v16;
  if (!v16)
  {
    if (MediaAnalysisLogLevel() < 4)
    {
      goto LABEL_15;
    }

    v20 = VCPLogToOSLogType[4];
    if (!os_log_type_enabled(&_os_log_default, v20))
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v24 = keyCopy;
    v11 = "No results type for %@; dropping result";
    v12 = v20;
    v13 = 12;
    goto LABEL_14;
  }

  if (resultCopy)
  {
    ppStmt = 0;
    v14 = sqlite3_prepare_v2(self->_database, "REPLACE INTO Results (assetId, resultsType, results) VALUES ((?), (?), (?));", -1, &ppStmt, 0);
    if (!v14)
    {
      v14 = sqlite3_bind_int64(ppStmt, 1, id);
      if (!v14)
      {
        v14 = sqlite3_bind_int(ppStmt, 2, v17);
        if (!v14)
        {
          v14 = sub_100043B5C(ppStmt, resultCopy);
          if (!v14)
          {
            v18 = sqlite3_expanded_sql(ppStmt);
            if (v18)
            {
              if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                v24 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
                v25 = 1024;
                v26 = 1486;
                v27 = 2080;
                v28 = v18;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
              }

              sqlite3_free(v18);
            }

            v19 = sqlite3_step(ppStmt);
            if (v19 == 101)
            {
              v14 = 0;
            }

            else
            {
              v14 = v19;
            }
          }
        }
      }
    }

    sqlite3_finalize(ppStmt);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v21 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 138412290;
        v24 = keyCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[VCPDatabaseWriter] Skip storing nil result for key %@", buf, 0xCu);
      }
    }

    v14 = -50;
  }

LABEL_16:

  return v14;
}

- (int)_storeAnalysis:(id)analysis forLocalIdentifier:(id)identifier
{
  analysisCopy = analysis;
  identifierCopy = identifier;
  vcp_results = [analysisCopy vcp_results];
  v24 = 0;
  v8 = sqlite3_exec(self->_database, "SAVEPOINT Analysis;", 0, 0, 0);
  if (v8)
  {
    goto LABEL_17;
  }

  v8 = [(VCPDatabaseWriter *)self _storeProperties:analysisCopy forLocalIdentifier:identifierCopy assetId:&v24];
  if (v8)
  {
    goto LABEL_17;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [vcp_results allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v10)
  {
    v12 = *v21;
    v13 = VCPLogToOSLogType[7];
    *&v11 = 138412546;
    v18 = v11;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v13))
        {
          *buf = v18;
          v26 = identifierCopy;
          v27 = 2112;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[VCPDatabaseWriter][%@] Storing result for key %@", buf, 0x16u);
        }

        v16 = [vcp_results objectForKey:{v15, v18}];
        v8 = [(VCPDatabaseWriter *)self _storeResult:v16 withKey:v15 forAssetId:v24];

        if (v8)
        {

          goto LABEL_17;
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v8 = sqlite3_exec(self->_database, "RELEASE Analysis;", 0, 0, 0);
  if (v8)
  {
LABEL_17:
    sqlite3_exec(self->_database, "ROLLBACK TO Analysis;", 0, 0, 0);
  }

  return v8;
}

- (int)_deleteResult:(id)result forAssetId:(int64_t)id
{
  resultCopy = result;
  v7 = MediaAnalysisResultsKeyToType();
  v8 = v7;
  if (v7)
  {
    ppStmt = 0;
    v9 = sqlite3_prepare_v2(self->_database, "DELETE FROM Results WHERE assetId=(?) AND resultsType=(?);", -1, &ppStmt, 0);
    if (!v9)
    {
      v9 = sqlite3_bind_int64(ppStmt, 1, id);
      if (!v9)
      {
        v9 = sqlite3_bind_int(ppStmt, 2, v8);
        if (!v9)
        {
          v10 = sqlite3_expanded_sql(ppStmt);
          if (v10)
          {
            if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
              v17 = 1024;
              v18 = 1532;
              v19 = 2080;
              v20 = v10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
            }

            sqlite3_free(v10);
          }

          v11 = sqlite3_step(ppStmt);
          if (v11 == 101)
          {
            v9 = 0;
          }

          else
          {
            v9 = v11;
          }
        }
      }
    }

    sqlite3_finalize(ppStmt);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v12 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *buf = 138412290;
        v16 = resultCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "No results type for %@; can't delete", buf, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (int)_updateProperties:(id)properties forAssetId:(int64_t)id
{
  propertiesCopy = properties;
  ppStmt = 0;
  v7 = sqlite3_prepare_v2(self->_database, "UPDATE Assets SET version=(?), dateModified=(?), dateAnalyzed=(?), analysisTypes=(?), flags=(?), quality=(?), statsFlags=(?) WHERE id=(?);", -1, &ppStmt, 0);
  if (!v7)
  {
    v7 = sqlite3_bind_int(ppStmt, 1, [propertiesCopy vcp_version]);
    if (!v7)
    {
      v8 = ppStmt;
      vcp_dateModified = [propertiesCopy vcp_dateModified];
      v10 = vcp_dateModified;
      if (vcp_dateModified)
      {
        [vcp_dateModified timeIntervalSinceReferenceDate];
        v12 = sqlite3_bind_double(v8, 2, v11);
      }

      else
      {
        v12 = sqlite3_bind_null(v8, 2);
      }

      v7 = v12;

      if (!v7)
      {
        v13 = ppStmt;
        vcp_dateAnalyzed = [propertiesCopy vcp_dateAnalyzed];
        v15 = vcp_dateAnalyzed;
        if (vcp_dateAnalyzed)
        {
          [vcp_dateAnalyzed timeIntervalSinceReferenceDate];
          v17 = sqlite3_bind_double(v13, 3, v16);
        }

        else
        {
          v17 = sqlite3_bind_null(v13, 3);
        }

        v7 = v17;

        if (!v7)
        {
          v7 = sqlite3_bind_int64(ppStmt, 4, [propertiesCopy vcp_types]);
          if (!v7)
          {
            v7 = sqlite3_bind_int(ppStmt, 5, [propertiesCopy vcp_flags]);
            if (!v7)
            {
              v18 = ppStmt;
              [propertiesCopy vcp_quality];
              v7 = sqlite3_bind_double(v18, 6, v19);
              if (!v7)
              {
                v7 = sqlite3_bind_int64(ppStmt, 7, [propertiesCopy vcp_statsFlags]);
                if (!v7)
                {
                  v7 = sqlite3_bind_int64(ppStmt, 8, id);
                  if (!v7)
                  {
                    v20 = sqlite3_expanded_sql(ppStmt);
                    if (v20)
                    {
                      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136315650;
                        v25 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
                        v26 = 1024;
                        v27 = 1557;
                        v28 = 2080;
                        v29 = v20;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
                      }

                      sqlite3_free(v20);
                    }

                    v21 = sqlite3_step(ppStmt);
                    if (v21 == 101)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      v7 = v21;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);

  return v7;
}

- (int)_updateAnalysis:(id)analysis withAnalysis:(id)withAnalysis forAsset:(id)asset withAssetId:(int64_t)id
{
  analysisCopy = analysis;
  withAnalysisCopy = withAnalysis;
  v65 = analysisCopy;
  assetCopy = asset;
  [analysisCopy vcp_version];
  v64 = MediaAnalysisTypesUpdatedSince();
  [analysisCopy vcp_types];
  [withAnalysisCopy vcp_types];
  vcp_types = [analysisCopy vcp_types];
  vcp_types2 = [withAnalysisCopy vcp_types];
  vcp_types3 = [withAnalysisCopy vcp_types];
  vcp_types4 = [analysisCopy vcp_types];
  vcp_types5 = [withAnalysisCopy vcp_types];
  vcp_types6 = [v65 vcp_types];
  v15 = vcp_types3 & ~vcp_types4 | v64;
  v63 = MediaAnalysisFlagsForTypes();
  if ([assetCopy vcp_isLivePhoto] && (VCPMAFullAnalysisTypesLivePhoto & v15) != 0 || objc_msgSend(assetCopy, "isVideo") && (VCPMAFullAnalysisTypesMovie & v15) != 0)
  {
    v63 |= 0x20000000uLL;
  }

  vcp_flags = [v65 vcp_flags];
  vcp_flags2 = [withAnalysisCopy vcp_flags];
  if ((v15 & 0x100000) != 0)
  {
    v16 = withAnalysisCopy;
  }

  else
  {
    v16 = v65;
  }

  vcp_statsFlags = [v16 vcp_statsFlags];
  [withAnalysisCopy vcp_quality];
  v17 = withAnalysisCopy;
  if (v18 == MediaAnalysisQualityUnknown)
  {
    vcp_version = [v65 vcp_version];
    if (vcp_version >= MediaAnalysisChangedVersion3)
    {
      v17 = v65;
    }

    else
    {
      v17 = withAnalysisCopy;
    }
  }

  [v17 vcp_quality];
  v21 = v20;
  [v65 vcp_version];
  v67 = MediaAnalysisResultsUpdatedSince();
  v22 = sqlite3_exec(self->_database, "SAVEPOINT Analysis;", 0, 0, 0);
  if (v22)
  {
    goto LABEL_66;
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v23 = MediaAnalysisResultsKeysForAnalysisTypes();
  v24 = [v23 countByEnumeratingWithState:&v77 objects:v89 count:{16, vcp_types2, vcp_types}];
  if (v24)
  {
    v25 = *v78;
    v26 = VCPLogToOSLogType[7];
LABEL_16:
    v27 = 0;
    while (1)
    {
      if (*v78 != v25)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v77 + 1) + 8 * v27);
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v26))
      {
        localIdentifier = [assetCopy localIdentifier];
        *buf = 138412546;
        v86 = localIdentifier;
        v87 = 2112;
        v88 = v28;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[VCPDatabaseWriter][%@] Deleting updated result analyzed in existing analysis but not in new analysis - %@", buf, 0x16u);
      }

      v22 = [(VCPDatabaseWriter *)self _deleteResult:v28 forAssetId:id];
      if (v22)
      {
        goto LABEL_65;
      }

      if (v24 == ++v27)
      {
        v24 = [v23 countByEnumeratingWithState:&v77 objects:v89 count:16];
        if (v24)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v23 = MediaAnalysisResultsKeysForAnalysisTypes();
  v30 = [v23 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v30)
  {
    v31 = *v74;
    v32 = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v74 != v31)
        {
          objc_enumerationMutation(v23);
        }

        v34 = *(*(&v73 + 1) + 8 * i);
        if ([v67 containsObject:v34])
        {
          vcp_results = [withAnalysisCopy vcp_results];
          v36 = [vcp_results objectForKey:v34];

          if (v36)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v32))
            {
              localIdentifier2 = [assetCopy localIdentifier];
              *buf = 138412546;
              v86 = localIdentifier2;
              v87 = 2112;
              v88 = v34;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[VCPDatabaseWriter][%@] Overwriting updated result analyzed in both existing analysis and new analysis - %@", buf, 0x16u);
            }

            v38 = [(VCPDatabaseWriter *)self _storeResult:v36 withKey:v34 forAssetId:id];
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v32))
            {
              localIdentifier3 = [assetCopy localIdentifier];
              *buf = 138412546;
              v86 = localIdentifier3;
              v87 = 2112;
              v88 = v34;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[VCPDatabaseWriter][%@] Deleting updated result analyzed in both existing analysis and new analysis - %@", buf, 0x16u);
            }

            v38 = [(VCPDatabaseWriter *)self _deleteResult:v34 forAssetId:id];
          }

          v22 = v38;
          if (v38)
          {
            goto LABEL_64;
          }
        }
      }

      v30 = [v23 countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v30);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v23 = MediaAnalysisResultsKeysForAnalysisTypes();
  v40 = [v23 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v40)
  {
    v41 = *v70;
    v42 = VCPLogToOSLogType[7];
LABEL_46:
    v43 = 0;
    while (1)
    {
      if (*v70 != v41)
      {
        objc_enumerationMutation(v23);
      }

      v44 = *(*(&v69 + 1) + 8 * v43);
      vcp_results2 = [withAnalysisCopy vcp_results];
      v36 = [vcp_results2 objectForKey:v44];

      if (v36)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v42))
        {
          localIdentifier4 = [assetCopy localIdentifier];
          *buf = 138412546;
          v86 = localIdentifier4;
          v87 = 2112;
          v88 = v44;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[VCPDatabaseWriter][%@] Storing result analyzed in new analysis but not in existing analysis - %@", buf, 0x16u);
        }

        v47 = [(VCPDatabaseWriter *)self _storeResult:v36 withKey:v44 forAssetId:id];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v42))
        {
          localIdentifier5 = [assetCopy localIdentifier];
          *buf = 138412546;
          v86 = localIdentifier5;
          v87 = 2112;
          v88 = v44;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[VCPDatabaseWriter][%@] Deleting result analyzed in new analysis but not in existing analysis - %@", buf, 0x16u);
        }

        v47 = [(VCPDatabaseWriter *)self _deleteResult:v44 forAssetId:id];
      }

      v22 = v47;
      if (v47)
      {
        break;
      }

      if (v40 == ++v43)
      {
        v40 = [v23 countByEnumeratingWithState:&v69 objects:v83 count:16];
        if (v40)
        {
          goto LABEL_46;
        }

        goto LABEL_61;
      }
    }

LABEL_64:

LABEL_65:
LABEL_66:
    sqlite3_exec(self->_database, "ROLLBACK TO Analysis;", 0, 0, 0);
    goto LABEL_67;
  }

LABEL_61:

  v81[0] = MediaAnalysisVersionKey;
  v62 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [withAnalysisCopy vcp_version]);
  v82[0] = v62;
  v81[1] = MediaAnalysisDateModifiedKey;
  vcp_dateModified = [withAnalysisCopy vcp_dateModified];
  v82[1] = vcp_dateModified;
  v81[2] = MediaAnalysisDateAnalyzedKey;
  vcp_dateAnalyzed = [withAnalysisCopy vcp_dateAnalyzed];
  v82[2] = vcp_dateAnalyzed;
  v81[3] = MediaAnalysisAnalysisTypesKey;
  v50 = [NSNumber numberWithUnsignedLongLong:vcp_types6 & ~v64 | vcp_types5];
  v82[3] = v50;
  v81[4] = MediaAnalysisFlagsKey;
  v51 = [NSNumber numberWithUnsignedLongLong:vcp_flags2 | vcp_flags & ~v63];
  v82[4] = v51;
  v81[5] = MediaAnalysisStatsFlagsKey;
  v52 = [NSNumber numberWithUnsignedInteger:vcp_statsFlags];
  v82[5] = v52;
  v81[6] = MediaAnalysisQualityKey;
  v53 = [NSNumber numberWithDouble:v21];
  v82[6] = v53;
  v54 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:7];
  v22 = [(VCPDatabaseWriter *)self _updateProperties:v54 forAssetId:id];

  if (v22)
  {
    goto LABEL_66;
  }

  v22 = sqlite3_exec(self->_database, "RELEASE Analysis;", 0, 0, 0);
  if (v22)
  {
    goto LABEL_66;
  }

LABEL_67:

  return v22;
}

- (int)updateResultsForAsset:(id)asset results:(id)results
{
  assetCopy = asset;
  resultsCopy = results;
  localIdentifier = [assetCopy localIdentifier];
  ppStmt = 0;
  v9 = [NSMutableString stringWithString:@"SELECT id FROM Assets WHERE localIdentifier=?"];
  v10 = sqlite3_prepare_v2(self->_database, [v9 UTF8String], -1, &ppStmt, 0);
  if (!v10)
  {
    v11 = ppStmt;
    v12 = localIdentifier;
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = sqlite3_bind_text(v11, 1, [v13 UTF8String], -1, 0);
    }

    else
    {
      v15 = sqlite3_bind_null(v11, 1);
    }

    v10 = v15;

    if (!v10)
    {
      v16 = sqlite3_expanded_sql(ppStmt);
      if (v16)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v34 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v35 = 1024;
          v36 = 1668;
          v37 = 2080;
          v38 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v16);
      }

      v10 = sqlite3_step(ppStmt);
      if (v10 != 100)
      {
        goto LABEL_23;
      }

      v17 = sqlite3_column_int(ppStmt, 0);
      v10 = sqlite3_step(ppStmt);
      if (v10 != 101)
      {
        goto LABEL_23;
      }

      v10 = sqlite3_exec(self->_database, "SAVEPOINT Analysis;", 0, 0, 0);
      if (!v10)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        obj = [resultsCopy allKeys];
        v18 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v18)
        {
          v25 = v17;
          v26 = *v28;
          while (2)
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v28 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v27 + 1) + 8 * i);
              v21 = [resultsCopy objectForKey:v20];
              v10 = [(VCPDatabaseWriter *)self _storeResult:v21 withKey:v20 forAssetId:v25];

              if (v10)
              {

                goto LABEL_24;
              }
            }

            v18 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v10 = sqlite3_exec(self->_database, "RELEASE Analysis;", 0, 0, 0);
LABEL_23:
        if (!v10)
        {
          goto LABEL_27;
        }
      }
    }
  }

LABEL_24:
  sqlite3_exec(self->_database, "ROLLBACK TO Analysis;", 0, 0, 0);
  if (MediaAnalysisLogLevel() >= 3)
  {
    v22 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      *buf = 138412290;
      v34 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "Failed to update results for asset %@", buf, 0xCu);
    }
  }

LABEL_27:

  return v10;
}

- (int)storeAnalysisForAsset:(id)asset analysis:(id)analysis
{
  assetCopy = asset;
  analysisCopy = analysis;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"storeAnalysisForAsset:analysis:" replacedByMethodName:@"assetWithPhotosAsset:newAnalysis:existingAnalysis:"];
    v8 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v23 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v24 = 1024;
      v25 = 1698;
      v26 = 2080;
      v27 = "[VCPDatabaseWriter(MediaAnalysis) storeAnalysisForAsset:analysis:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    localIdentifier = [assetCopy localIdentifier];
    if ([assetCopy vcp_isAnalysisValid:analysisCopy])
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000457D8;
      v18[3] = &unk_100283D70;
      v18[4] = self;
      v19 = localIdentifier;
      v20 = analysisCopy;
      v21 = assetCopy;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100045A88;
      v14[3] = &unk_100283D70;
      v14[4] = self;
      v15 = v20;
      v16 = v21;
      v17 = v19;
      v8 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v18 fallbackBlock:v14 write:1];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v10 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          vcp_version = [analysisCopy vcp_version];
          vcp_dateModified = [analysisCopy vcp_dateModified];
          *buf = 138412802;
          v23 = localIdentifier;
          v24 = 1024;
          v25 = vcp_version;
          v26 = 2112;
          v27 = vcp_dateModified;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[%@] Cannot store invalid analysis (v%d) with %@", buf, 0x1Cu);
        }
      }

      v8 = -18;
    }
  }

  return v8;
}

- (int)bumpAnalysisVersionForAsset:(id)asset
{
  assetCopy = asset;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"bumpAnalysisVersionForAsset:" replacedByMethodName:@"bumpAnalysisVersionForAsset:"];
    v5 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v11 = 1024;
      v12 = 1761;
      v13 = 2080;
      v14 = "[VCPDatabaseWriter(MediaAnalysis) bumpAnalysisVersionForAsset:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100045D44;
    v7[3] = &unk_100283C98;
    v7[4] = self;
    v8 = assetCopy;
    v5 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v7 fallbackBlock:0 write:1];
  }

  return v5;
}

- (int)_queryPropertiesForAsset:(id)asset assetId:(int64_t *)id analysis:(id *)analysis
{
  assetCopy = asset;
  ppStmt = 0;
  v9 = sqlite3_prepare_v2(self->_database, "SELECT id, version, dateModified, dateAnalyzed, analysisTypes, flags, quality, masterFingerprint, adjustedFingerprint, statsFlags FROM Assets WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  if (v9)
  {
    goto LABEL_38;
  }

  v10 = ppStmt;
  v11 = assetCopy;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = sqlite3_bind_text(v10, 1, [v12 UTF8String], -1, 0);
  }

  else
  {
    v14 = sqlite3_bind_null(v10, 1);
  }

  v9 = v14;

  if (v9)
  {
    goto LABEL_38;
  }

  v15 = sqlite3_expanded_sql(ppStmt);
  if (v15)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v47 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v48 = 1024;
      v49 = 1791;
      v50 = 2080;
      v51 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v15);
  }

  v16 = sqlite3_step(ppStmt);
  if (v16 != 100)
  {
    goto LABEL_35;
  }

  v17 = ppStmt;
  if (sqlite3_column_type(ppStmt, 2) == 5)
  {
    v18 = 0;
  }

  else
  {
    v18 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(v17, 2)];
  }

  v19 = ppStmt;
  if (sqlite3_column_type(ppStmt, 3) != 5)
  {
    v22 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(v19, 3)];
    v20 = v22;
    if (!v18 || !v22)
    {
      goto LABEL_17;
    }

    *id = sqlite3_column_int(ppStmt, 0);
    v23 = +[NSMutableDictionary dictionary];
    v24 = v23;
    *analysis = v23;
    v25 = [NSNumber numberWithInt:sqlite3_column_int(ppStmt, 1)];
    [v23 setObject:v25 forKey:MediaAnalysisVersionKey];

    [*analysis setObject:v18 forKey:MediaAnalysisDateModifiedKey];
    [*analysis setObject:v20 forKey:MediaAnalysisDateAnalyzedKey];
    v26 = *analysis;
    v27 = [NSNumber numberWithLongLong:sqlite3_column_int64(ppStmt, 4)];
    v28 = MediaAnalysisAnalysisTypesKey;
    [v26 setObject:v27 forKey:MediaAnalysisAnalysisTypesKey];

    v29 = *analysis;
    v30 = [NSNumber numberWithInt:sqlite3_column_int(ppStmt, 5)];
    [v29 setObject:v30 forKey:MediaAnalysisFlagsKey];

    if (sqlite3_column_double(ppStmt, 6) != MediaAnalysisQualityUnknown)
    {
      v31 = *analysis;
      v32 = [NSNumber numberWithDouble:?];
      [v31 setObject:v32 forKey:MediaAnalysisQualityKey];
    }

    v33 = *analysis;
    v34 = ppStmt;
    if (sqlite3_column_type(ppStmt, 7) == 5)
    {
      v35 = 0;
    }

    else
    {
      v35 = [NSString stringWithUTF8String:sqlite3_column_text(v34, 7)];
    }

    v36 = ppStmt;
    if (sqlite3_column_type(ppStmt, 8) == 5)
    {
      v37 = 0;
    }

    else
    {
      v37 = [NSString stringWithUTF8String:sqlite3_column_text(v36, 8)];
    }

    v38 = [VCPFingerprint fingerprintWithMaster:v35 adjusted:v37];
    [v33 vcp_setFingerprint:v38];

    v39 = *analysis;
    v40 = [NSNumber numberWithLongLong:sqlite3_column_int64(ppStmt, 9)];
    [v39 setObject:v40 forKey:MediaAnalysisStatsFlagsKey];

    vcp_version = [*analysis vcp_version];
    if (vcp_version < MediaAnalysisChangedVersion3 && ([*analysis vcp_types] & 4) != 0)
    {
      v42 = *analysis;
      v43 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*analysis vcp_types] | 8);
      [v42 setObject:v43 forKey:v28];
    }

    v16 = sqlite3_step(ppStmt);

LABEL_35:
    if (v16 == 101)
    {
      v9 = 0;
    }

    else
    {
      v9 = v16;
    }

    goto LABEL_38;
  }

  v20 = 0;
LABEL_17:
  if (MediaAnalysisLogLevel() >= 3)
  {
    v21 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      *buf = 138412290;
      v47 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[%@] Existing analysis contains nil date; ignoring ...", buf, 0xCu);
    }
  }

  v9 = 0;
LABEL_38:
  sqlite3_finalize(ppStmt);
  if (v9)
  {
    *analysis = 0;
  }

  return v9;
}

- (int)_queryResultsForAssetId:(int64_t)id analysis:(id)analysis
{
  analysisCopy = analysis;
  v7 = +[NSMutableDictionary dictionary];
  ppStmt = 0;
  v8 = sqlite3_prepare_v2(self->_database, "SELECT resultsType, results FROM Results WHERE assetId=(?);", -1, &ppStmt, 0);
  if (!v8)
  {
    v8 = sqlite3_bind_int64(ppStmt, 1, id);
    if (!v8)
    {
      v10 = sqlite3_expanded_sql(ppStmt);
      if (v10)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v17 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v18 = 1024;
          v19 = 1849;
          v20 = 2080;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v10);
      }

      v8 = sqlite3_step(ppStmt);
      while (v8 == 100)
      {
        sqlite3_column_int(ppStmt, 0);
        v11 = sub_10004690C(ppStmt, 1);
        if (!v11)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v13 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v13))
            {
              v14 = MediaAnalysisResultsTypeToKey();
              *buf = 138412290;
              v17 = v14;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "Cannot load result type: %@", buf, 0xCu);
            }
          }

          v8 = -18;
          goto LABEL_3;
        }

        v12 = MediaAnalysisResultsTypeToKey();
        if (v12)
        {
          [v7 setObject:v11 forKey:v12];
        }

        v8 = sqlite3_step(ppStmt);
      }

      if (v8 == 101)
      {
        if ([v7 count])
        {
          [analysisCopy setObject:v7 forKey:MediaAnalysisResultsKey];
        }

        v8 = 0;
      }
    }
  }

LABEL_3:
  sqlite3_finalize(ppStmt);

  return v8;
}

- (int)analysisForAsset:(id)asset analysis:(id *)analysis
{
  assetCopy = asset;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"analysisForAsset:analysis:" replacedByMethodName:@"fetchAnalysisWithLocalIdentifier:predicate:"];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v14 = 1024;
      v15 = 1887;
      v16 = 2080;
      v17 = "[VCPDatabaseWriter(MediaAnalysis) analysisForAsset:analysis:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100046C94;
    v9[3] = &unk_100283CC0;
    analysisCopy = analysis;
    v9[4] = self;
    v10 = assetCopy;
    v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:0];
  }

  return v7;
}

- (int)deleteAnalysisForAsset:(id)asset
{
  assetCopy = asset;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"deleteAnalysisForAsset:" replacedByMethodName:@"removeAssetsWithLocalIdentifiers:predicate:"];
    v5 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v11 = 1024;
      v12 = 1914;
      v13 = 2080;
      v14 = "[VCPDatabaseWriter(MediaAnalysis) deleteAnalysisForAsset:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100046F64;
    v7[3] = &unk_100283C98;
    v7[4] = self;
    v8 = assetCopy;
    v5 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v7 fallbackBlock:0 write:1];
  }

  return v5;
}

- (int)migration_deleteAnalysisForAssets:(id)assets
{
  assetsCopy = assets;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v13 = 1024;
    v14 = 1923;
    v15 = 2080;
    v16 = "[VCPDatabaseWriter(MediaAnalysis) migration_deleteAnalysisForAssets:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if ([assetsCopy count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100047224;
    v8[3] = &unk_100283C98;
    v9 = assetsCopy;
    selfCopy = self;
    v5 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v8 fallbackBlock:0 write:1];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v6 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "No local identifiers provided", buf, 2u);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (int)queryAnalysisResultsForAssets:(id)assets results:(id *)results
{
  assetsCopy = assets;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAnalysisResultsForAssets:results:" replacedByMethodName:@"fetchAnalysesWithLocalIdentifiers:predicate:"];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v15 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v16 = 1024;
      v17 = 1961;
      v18 = 2080;
      v19 = "[VCPDatabaseWriter(MediaAnalysis) queryAnalysisResultsForAssets:results:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    if ([assetsCopy count])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000476F4;
      v10[3] = &unk_100283CC0;
      v11 = assetsCopy;
      selfCopy = self;
      resultsCopy = results;
      v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v10 fallbackBlock:0 write:0];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v8 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "No local identifiers provided; return empty analyses", buf, 2u);
        }
      }

      v7 = 0;
    }
  }

  return v7;
}

- (int)_getBlacklistExpiredCount:(id)count count:(int *)a4
{
  countCopy = count;
  ppStmt = 0;
  v7 = sqlite3_prepare_v2(self->_database, "SELECT count(*) FROM Blacklist WHERE date<=(?);", -1, &ppStmt, 0);
  if (!v7)
  {
    v8 = ppStmt;
    v9 = countCopy;
    v10 = v9;
    if (v9)
    {
      [v9 timeIntervalSinceReferenceDate];
      v12 = sqlite3_bind_double(v8, 1, v11);
    }

    else
    {
      v12 = sqlite3_bind_null(v8, 1);
    }

    v7 = v12;

    if (!v7)
    {
      v13 = sqlite3_expanded_sql(ppStmt);
      if (v13)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v17 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v18 = 1024;
          v19 = 2038;
          v20 = 2080;
          v21 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v13);
      }

      v7 = sqlite3_step(ppStmt);
      if (v7 == 100)
      {
        v7 = 0;
        *a4 = sqlite3_column_int(ppStmt, 0);
      }
    }
  }

  sqlite3_finalize(ppStmt);

  return v7;
}

- (int)ageOutBlacklistBefore:(id)before count:(int *)count
{
  beforeCopy = before;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"ageOutBlacklistBefore:count:" replacedByMethodName:0];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v14 = 1024;
      v15 = 2053;
      v16 = 2080;
      v17 = "[VCPDatabaseWriter(Blacklist) ageOutBlacklistBefore:count:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100048048;
    v9[3] = &unk_100283CC0;
    v9[4] = self;
    v10 = beforeCopy;
    countCopy = count;
    v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:1];
  }

  return v7;
}

- (int)_getBlacklistCountForLocalIdentifier:(id)identifier count:(int *)count
{
  identifierCopy = identifier;
  ppStmt = 0;
  v7 = sqlite3_prepare_v2(self->_database, "SELECT count FROM Blacklist WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v7)
  {
    v8 = ppStmt;
    v9 = identifierCopy;
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

    if (!v7)
    {
      v13 = sqlite3_expanded_sql(ppStmt);
      if (v13)
      {
        if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v19 = 1024;
          v20 = 2078;
          v21 = 2080;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
        }

        sqlite3_free(v13);
      }

      v14 = sqlite3_step(ppStmt);
      v7 = v14;
      if (v14 == 101)
      {
        *count = 0;
      }

      else
      {
        if (v14 != 100)
        {
          goto LABEL_17;
        }

        *count = sqlite3_column_int(ppStmt, 0);
        v7 = sqlite3_step(ppStmt);
        if (v7 != 101)
        {
          goto LABEL_17;
        }
      }

      v7 = 0;
    }
  }

LABEL_17:
  sqlite3_finalize(ppStmt);

  return v7;
}

- (int)addAssetToBlacklist:(id)blacklist
{
  blacklistCopy = blacklist;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v17 = 1024;
    v18 = 2097;
    v19 = 2080;
    v20 = "[VCPDatabaseWriter(Blacklist) addAssetToBlacklist:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100048590;
  v12 = &unk_100283C98;
  selfCopy = self;
  v5 = blacklistCopy;
  v14 = v5;
  v6 = objc_retainBlock(&v9);
  selfCopy = [(VCPDatabaseWriter *)self executeDatabaseBlock:v6 fallbackBlock:v6 write:1, v9, v10, v11, v12, selfCopy];

  return selfCopy;
}

- (int)decrementBlacklistCountForLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v12 = 1024;
    v13 = 2125;
    v14 = 2080;
    v15 = "[VCPDatabaseWriter(Blacklist) decrementBlacklistCountForLocalIdentifier:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100048988;
  v8[3] = &unk_100283C98;
  v8[4] = self;
  v5 = identifierCopy;
  v9 = v5;
  v6 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v8 fallbackBlock:0 write:1];

  return v6;
}

- (int)removeLocalIdentifierFromBlacklist:(id)blacklist
{
  blacklistCopy = blacklist;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v12 = 1024;
    v13 = 2159;
    v14 = 2080;
    v15 = "[VCPDatabaseWriter(Blacklist) removeLocalIdentifierFromBlacklist:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100048E6C;
  v8[3] = &unk_100283C98;
  v8[4] = self;
  v5 = blacklistCopy;
  v9 = v5;
  v6 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v8 fallbackBlock:0 write:1];

  return v6;
}

+ (id)assetTypePredicatesStringWithMediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes imageOnlyAnalysis:(BOOL)analysis
{
  subtypesCopy = subtypes;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"assetTypePredicatesStringWithMediaType:mediaSubtypes:imageOnlyAnalysis:" replacedByMethodName:@"assetTypePredicatesStringWithMediaType:mediaSubtypes:"];
    v8 = 0;
  }

  else
  {
    v8 = 0;
    if ((type - 3) >= 0xFFFFFFFFFFFFFFFELL && !analysis)
    {
      type = [NSMutableString stringWithFormat:@"AND mediaType=(%ld) ", type];
      v8 = type;
      if (type == 1)
      {
        [type appendString:@"AND "];
        if ((subtypesCopy & 8) == 0)
        {
          [v8 appendString:@"NOT "];
        }

        [v8 appendFormat:@"(mediaSubtypes & (%lu)) ", 8];
      }
    }
  }

  return v8;
}

- (int)queryAssetCountForTaskID:(unint64_t)d
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAssetCountForTaskID:" replacedByMethodName:@"queryAssetCountForTaskID:"];
    return 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2208;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseWriter(ProcessingStatus) queryAssetCountForTaskID:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000492D4;
    v7[3] = &unk_100283D98;
    v7[5] = buf;
    v7[6] = d;
    v7[4] = self;
    [(VCPDatabaseWriter *)self executeDatabaseBlock:v7 fallbackBlock:0 write:0];
    v5 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return v5;
}

- (int)queryAssetCountForTaskID:(unint64_t)d minimumAttempts:(unint64_t)attempts
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAssetCountForTaskID:minimumAttempts:" replacedByMethodName:@"queryAssetCountForTaskID:minimumAttempts:"];
    return 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2238;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseWriter(ProcessingStatus) queryAssetCountForTaskID:minimumAttempts:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100049604;
    v9[3] = &unk_100283DC0;
    v9[6] = d;
    v9[7] = attempts;
    v9[4] = self;
    v9[5] = buf;
    [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:0];
    v7 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return v7;
}

- (int)queryAssetCountForTaskID:(unint64_t)d withStatus:(unint64_t)status andAttempts:(int)attempts
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryAssetCountForTaskID:withStatus:andAttempts:" replacedByMethodName:@"fetchAssetCountForTaskID:status:attempts:"];
    return 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2269;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseWriter(ProcessingStatus) queryAssetCountForTaskID:withStatus:andAttempts:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100049954;
    v11[3] = &unk_100283DE8;
    v11[6] = d;
    v11[7] = status;
    attemptsCopy = attempts;
    v11[4] = self;
    v11[5] = buf;
    [(VCPDatabaseWriter *)self executeDatabaseBlock:v11 fallbackBlock:0 write:0];
    v9 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return v9;
}

- (int)queryProcessingStatus:(unint64_t *)status attempts:(int *)attempts lastAttemptDate:(id *)date andNextAttemptDate:(id *)attemptDate forLocalIdentifier:(id)identifier andTaskID:(unint64_t)d
{
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryProcessingStatus:andAttempts:lastAttemptDate:andNextAttemptDate:forLocalIdentifier:andTaskID:" replacedByMethodName:@"fetchProcessingStatus:attempts:lastAttemptDate:nextAttemptDate:localIdentifier:taskID:"];
    v15 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v25 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v26 = 1024;
      v27 = 2306;
      v28 = 2080;
      v29 = "[VCPDatabaseWriter(ProcessingStatus) queryProcessingStatus:attempts:lastAttemptDate:andNextAttemptDate:forLocalIdentifier:andTaskID:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100049CD8;
    v17[3] = &unk_100283E10;
    v17[4] = self;
    dCopy = d;
    v18 = identifierCopy;
    statusCopy = status;
    attemptsCopy = attempts;
    dateCopy = date;
    attemptDateCopy = attemptDate;
    v15 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v17 fallbackBlock:0 write:0];
  }

  return v15;
}

- (unint64_t)queryEligibleToRetryAssetCountWithTaskID:(unint64_t)d
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryEligibleToRetryAssetCountWithTaskID:" replacedByMethodName:@"fetchEligibleToRetryAssetCountWithTaskID:"];
    return 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v13 = 136315650;
        v14 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v15 = 1024;
        v16 = 2344;
        v17 = 2080;
        v18 = "[VCPDatabaseWriter(ProcessingStatus) queryEligibleToRetryAssetCountWithTaskID:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", &v13, 0x1Cu);
      }
    }

    v6 = [(VCPDatabaseWriter *)self queryEligibleToRetryAssetCountWithProcessingStatus:0 andTaskID:d];
    v7 = [(VCPDatabaseWriter *)self queryEligibleToRetryAssetCountWithProcessingStatus:1 andTaskID:d]+ v6;
    v8 = [(VCPDatabaseWriter *)self queryEligibleToRetryAssetCountWithProcessingStatus:2 andTaskID:d];
    v9 = [(VCPDatabaseWriter *)self queryEligibleToRetryAssetCountWithProcessingStatus:3 andTaskID:d]+ v8 + v7;
    v10 = [(VCPDatabaseWriter *)self queryEligibleToRetryAssetCountWithProcessingStatus:4 andTaskID:d];
    v11 = [(VCPDatabaseWriter *)self queryEligibleToRetryAssetCountWithProcessingStatus:5 andTaskID:d]+ v10;
    v12 = &v9[[(VCPDatabaseWriter *)self queryEligibleToRetryAssetCountWithProcessingStatus:6 andTaskID:d]+ v11];
    return [(VCPDatabaseWriter *)self queryEligibleToRetryAssetCountWithProcessingStatus:7 andTaskID:d]+ v12;
  }
}

- (unint64_t)queryEligibleToRetryAssetCountWithProcessingStatus:(unint64_t)status andTaskID:(unint64_t)d
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryEligibleToRetryAssetCountWithProcessingStatus:andTaskID:" replacedByMethodName:@"fetchEligibleToRetryAssetCountWithProcessingStatus:taskID:"];
    return 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2361;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseWriter(ProcessingStatus) queryEligibleToRetryAssetCountWithProcessingStatus:andTaskID:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004A320;
    v9[3] = &unk_100283DC0;
    v9[6] = d;
    v9[7] = status;
    v9[4] = self;
    v9[5] = buf;
    [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:0];
    v7 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return v7;
}

- (int)fetchEligibleToRetryLocalIdentifiers:(id *)identifiers processingStatus:(unint64_t)status taskID:(unint64_t)d fetchLimit:(unint64_t)limit additionalPredicates:(id)predicates
{
  predicatesCopy = predicates;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchEligibleToRetryLocalIdentifiers:processingStatus:taskID:fetchLimit:additionalPredicates:" replacedByMethodName:@"fetchEligibleToRetryLocalIdentifiers:processingStatus:taskID:fetchLimit:additionalPredicates:"];
LABEL_8:
    v13 = -50;
    goto LABEL_9;
  }

  if (!identifiers)
  {
    goto LABEL_8;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v23 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v24 = 1024;
    v25 = 2400;
    v26 = 2080;
    v27 = "[VCPDatabaseWriter(ProcessingStatus) fetchEligibleToRetryLocalIdentifiers:processingStatus:taskID:fetchLimit:additionalPredicates:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004A760;
  v15[3] = &unk_100283E38;
  v16 = predicatesCopy;
  selfCopy = self;
  dCopy = d;
  statusCopy = status;
  limitCopy = limit;
  identifiersCopy = identifiers;
  v13 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v15 fallbackBlock:0 write:0];

LABEL_9:
  return v13;
}

- (int)fetchEligibleToRetryLocalIdentifiers:(id *)identifiers withProcessingStatus:(unint64_t)status andTaskID:(unint64_t)d andFetchLimit:(unint64_t)limit
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchEligibleToRetryLocalIdentifiers:withProcessingStatus:andTaskID:andFetchLimit:" replacedByMethodName:@"fetchEligibleToRetryLocalIdentifiers:processingStatus:taskID:fetchLimit:"];
    return -50;
  }

  else
  {

    return [(VCPDatabaseWriter *)self fetchEligibleToRetryLocalIdentifiers:identifiers processingStatus:status taskID:d fetchLimit:limit additionalPredicates:0];
  }
}

- (int)fetchLocalIdentifiersEligibleForRetry:(id *)retry withTaskID:(unint64_t)d andFetchLimit:(unint64_t)limit
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchEligibleLocalIdentifierEntries:andTaskID:andFetchLimit:" replacedByMethodName:@"fetchLocalIdentifiersEligibleForRetry:taskID:fetchLimit:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v13 = 1024;
        v14 = 2464;
        v15 = 2080;
        v16 = "[VCPDatabaseWriter(ProcessingStatus) fetchLocalIdentifiersEligibleForRetry:withTaskID:andFetchLimit:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004AD70;
    v10[3] = &unk_100283BD0;
    v10[4] = self;
    v10[5] = d;
    v10[6] = limit;
    v10[7] = retry;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v10 fallbackBlock:0 write:0];
  }
}

- (int)fetchLocalIdentifiersEligibleForRetry:(id *)retry taskID:(unint64_t)d includingStatuses:(id)statuses fetchLimit:(unint64_t)limit additionalPredicates:(id)predicates
{
  statusesCopy = statuses;
  predicatesCopy = predicates;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchLocalIdentifiersEligibleForRetry:taskID:includingStatuses:fetchLimit:additionalPredicates:" replacedByMethodName:@"fetchLocalIdentifiersEligibleForRetry:taskID:includingStatuses:fetchLimit:additionalPredicates:"];
LABEL_8:
    v14 = -50;
    goto LABEL_9;
  }

  if (!retry)
  {
    goto LABEL_8;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v24 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v25 = 1024;
    v26 = 2508;
    v27 = 2080;
    v28 = "[VCPDatabaseWriter(ProcessingStatus) fetchLocalIdentifiersEligibleForRetry:taskID:includingStatuses:fetchLimit:additionalPredicates:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004B2D8;
  v16[3] = &unk_100283E60;
  v17 = statusesCopy;
  v18 = predicatesCopy;
  selfCopy = self;
  dCopy = d;
  limitCopy = limit;
  retryCopy = retry;
  v14 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v16 fallbackBlock:0 write:0];

LABEL_9:
  return v14;
}

- (int)fetchLocalIdentifiersEligibleForRetry:(id *)retry taskID:(unint64_t)d excludingStatuses:(id)statuses fetchLimit:(unint64_t)limit additionalPredicates:(id)predicates
{
  statusesCopy = statuses;
  predicatesCopy = predicates;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchLocalIdentifiersEligibleForRetry:taskID:includingStatuses:fetchLimit:additionalPredicates:" replacedByMethodName:@"fetchLocalIdentifiersEligibleForRetry:taskID:includingStatuses:fetchLimit:additionalPredicates:"];
LABEL_8:
    v14 = -50;
    goto LABEL_9;
  }

  if (!retry)
  {
    goto LABEL_8;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v24 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v25 = 1024;
    v26 = 2563;
    v27 = 2080;
    v28 = "[VCPDatabaseWriter(ProcessingStatus) fetchLocalIdentifiersEligibleForRetry:taskID:excludingStatuses:fetchLimit:additionalPredicates:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004B9BC;
  v16[3] = &unk_100283E60;
  v17 = statusesCopy;
  v18 = predicatesCopy;
  selfCopy = self;
  dCopy = d;
  limitCopy = limit;
  retryCopy = retry;
  v14 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v16 fallbackBlock:0 write:0];

LABEL_9:
  return v14;
}

- (int)fetchLocalIdentifiers:(id *)identifiers processingStatus:(unint64_t)status taskID:(unint64_t)d attempts:(int)attempts fetchLimit:(unint64_t)limit additionalPredicates:(id)predicates
{
  predicatesCopy = predicates;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchLocalIdentifiers:processingStatus:taskID:attempts:fetchLimit:additionalPredicates:" replacedByMethodName:@"fetchLocalIdentifiers:processingStatus:taskID:attempts:fetchLimit:additionalPredicates:"];
LABEL_8:
    v15 = -50;
    goto LABEL_9;
  }

  if (!identifiers)
  {
    goto LABEL_8;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v26 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v27 = 1024;
    v28 = 2619;
    v29 = 2080;
    v30 = "[VCPDatabaseWriter(ProcessingStatus) fetchLocalIdentifiers:processingStatus:taskID:attempts:fetchLimit:additionalPredicates:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004C088;
  v17[3] = &unk_100283E88;
  v18 = predicatesCopy;
  selfCopy = self;
  dCopy = d;
  statusCopy = status;
  attemptsCopy = attempts;
  limitCopy = limit;
  identifiersCopy = identifiers;
  v15 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v17 fallbackBlock:0 write:0];

LABEL_9:
  return v15;
}

- (int)fetchLocalIdentifiers:(id *)identifiers withProcessingStatus:(unint64_t)status andTaskID:(unint64_t)d andAttempts:(int)attempts andFetchLimit:(unint64_t)limit
{
  v8 = *&attempts;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchLocalIdentifiers:withProcessingStatus:andTaskID:andAttempts:andFetchLimit:" replacedByMethodName:@"fetchLocalIdentifiers:processingStatus:taskID:attempts:fetchLimit:"];
    return -50;
  }

  else
  {

    return [(VCPDatabaseWriter *)self fetchLocalIdentifiers:identifiers processingStatus:status taskID:d attempts:v8 fetchLimit:limit additionalPredicates:0];
  }
}

- (int)fetchLocalIdentifiers:(id *)identifiers taskID:(unint64_t)d processingStatus:(unint64_t)status additionalPredicates:(id)predicates
{
  predicatesCopy = predicates;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchLocalIdentifiers:taskID:processingStatus:additionalPredicates:" replacedByMethodName:@"fetchLocalIdentifiers:taskID:processingStatus:additionalPredicates:"];
LABEL_8:
    v11 = -50;
    goto LABEL_9;
  }

  if (!identifiers)
  {
    goto LABEL_8;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v21 = 1024;
    v22 = 2686;
    v23 = 2080;
    v24 = "[VCPDatabaseWriter(ProcessingStatus) fetchLocalIdentifiers:taskID:processingStatus:additionalPredicates:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004C6A8;
  v13[3] = &unk_100283EB0;
  v14 = predicatesCopy;
  selfCopy = self;
  dCopy = d;
  statusCopy = status;
  identifiersCopy = identifiers;
  v11 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v13 fallbackBlock:0 write:0];

LABEL_9:
  return v11;
}

- (int)fetchLocalIdentifiers:(id *)identifiers withTaskID:(unint64_t)d andProcessingStatus:(unint64_t)status
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchLocalIdentifiers:withTaskID:andProcessingStatus:" replacedByMethodName:@"fetchLocalIdentifiers:taskID:processingStatus:"];
    return -50;
  }

  else
  {

    return [(VCPDatabaseWriter *)self fetchLocalIdentifiers:identifiers taskID:d processingStatus:status additionalPredicates:0];
  }
}

- (int)fetchProcessingErrorCode:(unint64_t *)code errorLine:(unint64_t *)line taskID:(unint64_t)d localIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchProcessingErrorCode:errorLine:taskID:localIdentifier:" replacedByMethodName:@"fetchProcessingErrorCode:errorLine:taskID:localIdentifier:"];
    v11 = -50;
  }

  else
  {
    v11 = -50;
    if (code && line)
    {
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v19 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v20 = 1024;
        v21 = 2748;
        v22 = 2080;
        v23 = "[VCPDatabaseWriter(ProcessingStatus) fetchProcessingErrorCode:errorLine:taskID:localIdentifier:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10004CC7C;
      v13[3] = &unk_100283EB0;
      v13[4] = self;
      dCopy = d;
      v14 = identifierCopy;
      codeCopy = code;
      lineCopy = line;
      v11 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v13 fallbackBlock:0 write:0];
    }
  }

  return v11;
}

- (int)fetchProcessingErrorCodeCounts:(id *)counts withTaskID:(unint64_t)d sinceDate:(id)date additionalPredicates:(id)predicates
{
  dateCopy = date;
  predicatesCopy = predicates;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchProcessingErrorCodeCounts:withTaskID:sinceDate:additionalPredicates:" replacedByMethodName:@"fetchProcessingErrorCodeCounts:taskID:sinceDate:additionalPredicates:"];
LABEL_8:
    v12 = -50;
    goto LABEL_9;
  }

  if (!counts)
  {
    goto LABEL_8;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v22 = 1024;
    v23 = 2786;
    v24 = 2080;
    v25 = "[VCPDatabaseWriter(ProcessingStatus) fetchProcessingErrorCodeCounts:withTaskID:sinceDate:additionalPredicates:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004D084;
  v14[3] = &unk_100283B80;
  v15 = predicatesCopy;
  selfCopy = self;
  dCopy = d;
  v17 = dateCopy;
  countsCopy = counts;
  v12 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v14 fallbackBlock:0 write:0];

LABEL_9:
  return v12;
}

- (int)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes errorCode:(unint64_t)self0 errorLine:(unint64_t)self1
{
  assetCopy = asset;
  dateCopy = date;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"setAttempts:localIdentifier:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:" replacedByMethodName:@"setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:"];
    v19 = -50;
  }

  else
  {
    v23 = [assetCopy mad_nextAttemptDateForStatus:status currentAttemptDate:dateCopy attemptCount:attempts];
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v36 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v37 = 1024;
      v38 = 2841;
      v39 = 2080;
      v40 = "[VCPDatabaseWriter(ProcessingStatus) setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10004D6DC;
    v24[3] = &unk_100283ED8;
    v24[4] = self;
    dCopy = d;
    v25 = assetCopy;
    v26 = dateCopy;
    v20 = v23;
    v27 = v20;
    codeCopy = code;
    lineCopy = line;
    typeCopy = type;
    subtypesCopy = subtypes;
    attemptsCopy = attempts;
    statusCopy = status;
    v21 = objc_retainBlock(v24);
    v19 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v21 fallbackBlock:v21 write:1];
  }

  return v19;
}

- (int)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes
{
  assetCopy = asset;
  dateCopy = date;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"setAttempts:localIdentifier:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:" replacedByMethodName:0];
    v17 = -50;
  }

  else
  {
    v17 = [(VCPDatabaseWriter *)self setAttempts:attempts asset:assetCopy taskID:d status:status lastAttemptDate:dateCopy mediaType:type mediaSubtypes:subtypes errorCode:1 errorLine:0];
  }

  return v17;
}

- (int)setAttempts:(unint64_t)attempts asset:(id)asset taskID:(unint64_t)d status:(unint64_t)status lastAttemptDate:(id)date
{
  assetCopy = asset;
  dateCopy = date;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"setAttempts:asset:taskID:status:lastAttemptDate:" replacedByMethodName:@"setAttempts:asset:taskID:status:lastAttemptDate:"];
    v14 = -50;
  }

  else
  {
    v14 = [(VCPDatabaseWriter *)self setAttempts:attempts asset:assetCopy taskID:d status:status lastAttemptDate:dateCopy mediaType:0 mediaSubtypes:0 errorCode:1 errorLine:0];
  }

  return v14;
}

- (int)removeProcessingStatusForLocalIdentifier:(id)identifier andTaskID:(unint64_t)d
{
  identifierCopy = identifier;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"removeProcessingStatusForLocalIdentifier:andTaskID:" replacedByMethodName:@"removeProcessingStatusForLocalIdentifier:taskID:"];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v14 = 1024;
      v15 = 2919;
      v16 = 2080;
      v17 = "[VCPDatabaseWriter(ProcessingStatus) removeProcessingStatusForLocalIdentifier:andTaskID:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004DD20;
    v9[3] = &unk_100283CC0;
    v9[4] = self;
    dCopy = d;
    v10 = identifierCopy;
    v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:1];
  }

  return v7;
}

- (int)removeAllProcessingStatusForTaskID:(unint64_t)d
{
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"removeAllProcessingStatusForTaskID:" replacedByMethodName:@"removeAllProcessingStatusForTaskID:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v8 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v9 = 1024;
        v10 = 2942;
        v11 = 2080;
        v12 = "[VCPDatabaseWriter(ProcessingStatus) removeAllProcessingStatusForTaskID:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004E038;
    v6[3] = &unk_100283C20;
    v6[4] = self;
    v6[5] = d;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v6 fallbackBlock:0 write:1];
  }
}

- (int)removeProcessingStatusForTaskID:(unint64_t)d mediaType:(int64_t)type mediaSubtypes:(unint64_t)subtypes
{
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"removeAllProcessingStatusForTaskID:mediaType:mediaSubtypes:" replacedByMethodName:@"removeAllProcessingStatusForTaskID:mediaType:mediaSubtypes:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v13 = 1024;
        v14 = 2956;
        v15 = 2080;
        v16 = "[VCPDatabaseWriter(ProcessingStatus) removeProcessingStatusForTaskID:mediaType:mediaSubtypes:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004E1BC;
    v10[3] = &unk_100283BD0;
    v10[4] = self;
    v10[5] = d;
    v10[6] = type;
    v10[7] = subtypes;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v10 fallbackBlock:0 write:1];
  }
}

- (int)updateProcessingStatus:(unint64_t)status andNextAttemptDate:(id)date andErrorCode:(unint64_t)code andErrorLine:(unint64_t)line forLocalIdentifier:(id)identifier andTaskID:(unint64_t)d
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"updateProcessingStatus:andNextAttemptDate:andErrorCode:andErrorLine:forLocaldentifier:andTaskID:" replacedByMethodName:@"updateProcessingStatus:nextAttemptDate:errorCode:errorLine:localIdentifier:taskID:"];
    v16 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v27 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v28 = 1024;
      v29 = 2985;
      v30 = 2080;
      v31 = "[VCPDatabaseWriter(ProcessingStatus) updateProcessingStatus:andNextAttemptDate:andErrorCode:andErrorLine:forLocalIdentifier:andTaskID:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004E54C;
    v19[3] = &unk_100283F00;
    v19[4] = self;
    statusCopy = status;
    v20 = dateCopy;
    codeCopy = code;
    lineCopy = line;
    dCopy = d;
    v21 = identifierCopy;
    v17 = objc_retainBlock(v19);
    v16 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v17 fallbackBlock:v17 write:1];
  }

  return v16;
}

- (int)updateProcessingStatus:(unint64_t)status andNextAttemptDate:(id)date forLocalIdentifier:(id)identifier andTaskID:(unint64_t)d
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"updateProcessingStatus:andNextAttemptDate:forLocaldentifier:andTaskID:" replacedByMethodName:@"updateProcessingStatus:andNextAttemptDate:forLocaldentifier:andTaskID:"];
    v12 = -50;
  }

  else
  {
    v12 = [(VCPDatabaseWriter *)self updateProcessingStatus:status andNextAttemptDate:dateCopy andErrorCode:1 andErrorLine:0 forLocalIdentifier:identifierCopy andTaskID:d];
  }

  return v12;
}

- (int)hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d additionalPredicates:(id)predicates
{
  predicatesCopy = predicates;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"hardFailAllRunningProcessingStatusForTaskID:additionalPredicates:" replacedByMethodName:@"hardFailAllRunningProcessingStatusForTaskID:additionalPredicates:"];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v15 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v16 = 1024;
      v17 = 3032;
      v18 = 2080;
      v19 = "[VCPDatabaseWriter(ProcessingStatus) hardFailAllRunningProcessingStatusForTaskID:additionalPredicates:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004E9E0;
    v10[3] = &unk_100283CC0;
    v11 = predicatesCopy;
    selfCopy = self;
    dCopy = d;
    v8 = objc_retainBlock(v10);
    v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v8 fallbackBlock:v8 write:1];
  }

  return v7;
}

- (int)hardFailAllRunningProcessingStatusForTaskID:(unint64_t)d
{
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"hardFailAllRunningProcessingStatusForTaskID:" replacedByMethodName:@"hardFailAllRunningProcessingStatusForTaskID:"];
    return -50;
  }

  else
  {

    return [(VCPDatabaseWriter *)self hardFailAllRunningProcessingStatusForTaskID:d additionalPredicates:0];
  }
}

- (int)_removeSchedulingHistoryForStartTimeBefore:(id)before
{
  beforeCopy = before;
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(self->_database, "DELETE FROM BackgroundActivitySchedulingHistory WHERE startTime<(?);", -1, &ppStmt, 0);
  if (v5)
  {
    goto LABEL_21;
  }

  v6 = ppStmt;
  v7 = beforeCopy;
  v8 = v7;
  if (v7)
  {
    [v7 timeIntervalSinceReferenceDate];
    v10 = sqlite3_bind_double(v6, 1, v9);
  }

  else
  {
    v10 = sqlite3_bind_null(v6, 1);
  }

  v5 = v10;

  if (v5)
  {
    goto LABEL_21;
  }

  v14 = sqlite3_expanded_sql(ppStmt);
  if (v14)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v19 = 1024;
      v20 = 3083;
      v21 = 2080;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v14);
  }

  v15 = sqlite3_step(ppStmt);
  v5 = v15;
  v12 = 0;
  if (v15)
  {
    if (v15 != 101)
    {
LABEL_21:
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 138412290;
          v18 = beforeCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Failed to remove background activity scheduling history with start time before %@", buf, 0xCu);
        }
      }

      v12 = v5;
    }
  }

  sqlite3_finalize(ppStmt);

  return v12;
}

- (int)_storeSchedulingHistoryForActivityID:(unint64_t)d andStartTime:(id)time
{
  timeCopy = time;
  ppStmt = 0;
  v7 = sqlite3_prepare_v2(self->_database, "REPLACE INTO BackgroundActivitySchedulingHistory (activityID, startTime, duration, exitStatus) VALUES ((?), (?), (?), (?));", -1, &ppStmt, 0);
  if (v7)
  {
    goto LABEL_24;
  }

  v7 = sqlite3_bind_int64(ppStmt, 1, d);
  if (v7)
  {
    goto LABEL_24;
  }

  v8 = ppStmt;
  v9 = timeCopy;
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

  v7 = v12;

  if (v7)
  {
    goto LABEL_24;
  }

  v7 = sqlite3_bind_double(ppStmt, 3, -1.0);
  if (v7)
  {
    goto LABEL_24;
  }

  v7 = sqlite3_bind_int64(ppStmt, 4, 0);
  if (v7)
  {
    goto LABEL_24;
  }

  v17 = sqlite3_expanded_sql(ppStmt);
  if (v17)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v22 = 1024;
      LODWORD(v23[0]) = 3103;
      WORD2(v23[0]) = 2080;
      *(v23 + 6) = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v17);
  }

  v18 = sqlite3_step(ppStmt);
  v7 = v18;
  v15 = 0;
  if (v18)
  {
    if (v18 != 101)
    {
LABEL_24:
      if (MediaAnalysisLogLevel() >= 3)
      {
        v13 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          v14 = VCPTaskIDDescription();
          *buf = 138412546;
          v21 = v14;
          v22 = 2112;
          v23[0] = timeCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "Failed to store history for background activity %@ and start time %@", buf, 0x16u);
        }
      }

      v15 = v7;
    }
  }

  sqlite3_finalize(ppStmt);

  return v15;
}

- (int)storeSchedulingHistoryForActivityID:(unint64_t)d andStartTime:(id)time
{
  timeCopy = time;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"storeSchedulingHistoryForActivityID:andStartTime:" replacedByMethodName:@"updateSessionLogWithTaskID:startTime:duration:exitStatus:sessionLog:"];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v17 = 1024;
      v18 = 3119;
      v19 = 2080;
      v20 = "[VCPDatabaseWriter(BackgroundActivitySchedulingHistory) storeSchedulingHistoryForActivityID:andStartTime:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004F360;
    v12[3] = &unk_100283CC0;
    v12[4] = self;
    dCopy = d;
    v13 = timeCopy;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004F3E4;
    v9[3] = &unk_100283CC0;
    v9[4] = self;
    dCopy2 = d;
    v10 = v13;
    v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v12 fallbackBlock:v9 write:1];
  }

  return v7;
}

- (int)updateSchedulingHistoryForActivityID:(unint64_t)d startTime:(id)time duration:(double)duration exitStatus:(int)status sessionLog:(id)log
{
  timeCopy = time;
  logCopy = log;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"updateSchedulingHistoryForActivityID:startTime:duration:exitStatus:sessionLog:" replacedByMethodName:@"updateSessionLogWithTaskID:startTime:duration:exitStatus:sessionLog:"];
    selfCopy = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v28 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v29 = 1024;
      v30 = 3147;
      v31 = 2080;
      v32 = "[VCPDatabaseWriter(BackgroundActivitySchedulingHistory) updateSchedulingHistoryForActivityID:startTime:duration:exitStatus:sessionLog:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10004F614;
    v20 = &unk_100283F28;
    selfCopy = self;
    dCopy = d;
    v22 = timeCopy;
    durationCopy = duration;
    statusCopy = status;
    v23 = logCopy;
    v15 = objc_retainBlock(&v17);
    selfCopy = [(VCPDatabaseWriter *)self executeDatabaseBlock:v15 fallbackBlock:v15 write:1, v17, v18, v19, v20, selfCopy];
  }

  return selfCopy;
}

- (int)querySchedulingHistoryRecords:(id *)records forActivityID:(unint64_t)d sinceDate:(id)date
{
  dateCopy = date;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"querySchedulingHistoryRecords:forActivityID:sinceDate:" replacedByMethodName:@"querySchedulingHistoryRecords:forActivityID:sinceDate:"];
    v9 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3182;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseWriter(BackgroundActivitySchedulingHistory) querySchedulingHistoryRecords:forActivityID:sinceDate:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_100042A64;
    v16 = sub_100042A74;
    v17 = +[NSMutableArray array];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004FB1C;
    v11[3] = &unk_100283F50;
    v11[4] = self;
    dCopy = d;
    v12 = dateCopy;
    v13 = buf;
    v9 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v11 fallbackBlock:0 write:0];
    *records = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  return v9;
}

- (int)purgeExcessiveSchedulingRecordsForActivityID:(unint64_t)d
{
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"purgeExcessiveSchedulingRecordsForActivityID:" replacedByMethodName:0];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v8 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v9 = 1024;
        v10 = 3228;
        v11 = 2080;
        v12 = "[VCPDatabaseWriter(BackgroundActivitySchedulingHistory) purgeExcessiveSchedulingRecordsForActivityID:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100050028;
    v6[3] = &unk_100283C20;
    v6[4] = self;
    v6[5] = d;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v6 fallbackBlock:0 write:1];
  }
}

- (int)_storeProgressForActivityID:(unint64_t)d withAnalysisSubtype:(unint64_t)subtype version:(unint64_t)version processedAssetCount:(unint64_t)count totalAssetCount:(unint64_t)assetCount storeDate:(id)date
{
  dateCopy = date;
  ppStmt = 0;
  v15 = sqlite3_prepare_v2(self->_database, "REPLACE INTO BackgroundAnalysisProgressHistory (activityID, analysisSubtype, storeDate, version, processedAssetCount, totalAssetCount) VALUES ((?), (?), (?), (?), (?), (?));", -1, &ppStmt, 0);
  if (v15)
  {
    goto LABEL_26;
  }

  v15 = sqlite3_bind_int64(ppStmt, 1, d);
  if (v15)
  {
    goto LABEL_26;
  }

  v15 = sqlite3_bind_int64(ppStmt, 2, subtype);
  if (v15)
  {
    goto LABEL_26;
  }

  v16 = ppStmt;
  v17 = dateCopy;
  v18 = v17;
  if (v17)
  {
    [v17 timeIntervalSinceReferenceDate];
    v20 = sqlite3_bind_double(v16, 3, v19);
  }

  else
  {
    v20 = sqlite3_bind_null(v16, 3);
  }

  v15 = v20;

  if (v15)
  {
    goto LABEL_26;
  }

  v15 = sqlite3_bind_int64(ppStmt, 4, version);
  if (v15)
  {
    goto LABEL_26;
  }

  v15 = sqlite3_bind_int64(ppStmt, 5, count);
  if (v15)
  {
    goto LABEL_26;
  }

  v15 = sqlite3_bind_int64(ppStmt, 6, assetCount);
  if (v15)
  {
    goto LABEL_26;
  }

  v24 = sqlite3_expanded_sql(ppStmt);
  if (v24)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *v28 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      *&v28[8] = 1024;
      *v29 = 3283;
      *&v29[4] = 2080;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v24);
  }

  v25 = sqlite3_step(ppStmt);
  v15 = v25;
  v22 = 0;
  if (v25)
  {
    if (v25 != 101)
    {
LABEL_26:
      if (MediaAnalysisLogLevel() >= 3)
      {
        v21 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          *buf = 67110658;
          *v28 = v15;
          *&v28[4] = 1024;
          *&v28[6] = d;
          *v29 = 1024;
          *&v29[2] = subtype;
          LOWORD(v30) = 1024;
          *(&v30 + 2) = version;
          HIWORD(v30) = 1024;
          countCopy = count;
          v32 = 1024;
          assetCountCopy = assetCount;
          v34 = 2112;
          v35 = dateCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "Error: %d -- Failed to store progress for activity %d subtype %d version %d processed asset count %d total asset count %d on datetime %@. ", buf, 0x30u);
        }
      }

      v22 = v15;
    }
  }

  sqlite3_finalize(ppStmt);

  return v22;
}

- (int)_removeProgressRecordsBeforeDate:(id)date
{
  dateCopy = date;
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(self->_database, "DELETE FROM BackgroundAnalysisProgressHistory WHERE storeDate<(?);", -1, &ppStmt, 0);
  if (v5)
  {
    goto LABEL_21;
  }

  v6 = ppStmt;
  v7 = dateCopy;
  v8 = v7;
  if (v7)
  {
    [v7 timeIntervalSinceReferenceDate];
    v10 = sqlite3_bind_double(v6, 1, v9);
  }

  else
  {
    v10 = sqlite3_bind_null(v6, 1);
  }

  v5 = v10;

  if (v5)
  {
    goto LABEL_21;
  }

  v14 = sqlite3_expanded_sql(ppStmt);
  if (v14)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v19 = 1024;
      v20 = 3299;
      v21 = 2080;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v14);
  }

  v15 = sqlite3_step(ppStmt);
  v5 = v15;
  v12 = 0;
  if (v15)
  {
    if (v15 != 101)
    {
LABEL_21:
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 138412290;
          v18 = dateCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Failed to remove background analysis progress history with storage date before %@", buf, 0xCu);
        }
      }

      v12 = v5;
    }
  }

  sqlite3_finalize(ppStmt);

  return v12;
}

- (int)_removeProgressRecordsBeyondMaximum:(unint64_t)maximum
{
  ppStmt = 0;
  v4 = sqlite3_prepare_v2(self->_database, "DELETE FROM BackgroundAnalysisProgressHistory WHERE id NOT IN(    SELECT id FROM BackgroundAnalysisProgressHistory      ORDER BY storeDate DESC LIMIT (?));", -1, &ppStmt, 0);
  if (v4)
  {
    goto LABEL_3;
  }

  v4 = sqlite3_bind_int64(ppStmt, 1, maximum);
  if (v4)
  {
    goto LABEL_3;
  }

  v8 = sqlite3_expanded_sql(ppStmt);
  if (v8)
  {
    v9 = v8;
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v13 = 1024;
      v14 = 3318;
      v15 = 2080;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v9);
  }

  v4 = sqlite3_step(ppStmt);
  v5 = 0;
  if (v4)
  {
    if (v4 != 101)
    {
LABEL_3:
      v5 = v4;
      if (MediaAnalysisLogLevel() >= 3)
      {
        v6 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v6))
        {
          *buf = 67109120;
          LODWORD(v12) = maximum;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Failed to remove background analysis progress history past max count %d", buf, 8u);
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v5;
}

- (int)storeProgressForActivityID:(unint64_t)d withAnalysisSubtype:(unint64_t)subtype version:(unint64_t)version processedAssetCount:(unint64_t)count totalAssetCount:(unint64_t)assetCount storeDate:(id)date
{
  dateCopy = date;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"storeProgressForActivityID:withAnalysisSubtype:version:processedAssetCount:totalAssetCount:storeDate:" replacedByMethodName:@"storeProgressForActivityID:withAnalysisSubtype:version:processedAssetCount:totalAssetCount:storeDate:"];
    v15 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v32 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v33 = 1024;
      v34 = 3338;
      v35 = 2080;
      v36 = "[VCPDatabaseWriter(BackgroundAnalysisProgressHistory) storeProgressForActivityID:withAnalysisSubtype:version:processedAssetCount:totalAssetCount:storeDate:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100050B54;
    v24[3] = &unk_100283E10;
    v24[4] = self;
    dCopy = d;
    subtypeCopy = subtype;
    versionCopy = version;
    countCopy = count;
    assetCountCopy = assetCount;
    v25 = dateCopy;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100050B6C;
    v17[3] = &unk_100283E10;
    v17[4] = self;
    dCopy2 = d;
    subtypeCopy2 = subtype;
    versionCopy2 = version;
    countCopy2 = count;
    assetCountCopy2 = assetCount;
    v18 = v25;
    v15 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v24 fallbackBlock:v17 write:1];
  }

  return v15;
}

- (int)removeProgressEntriesBeyondLimits
{
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"removeProgressEntriesBeyondLimits:" replacedByMethodName:@"removeProgressEntriesBeyondLimits:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v6 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v7 = 1024;
        v8 = 3367;
        v9 = 2080;
        v10 = "[VCPDatabaseWriter(BackgroundAnalysisProgressHistory) removeProgressEntriesBeyondLimits]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100050CE4;
    v4[3] = &unk_100283B58;
    v4[4] = self;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v4 fallbackBlock:0 write:1];
  }
}

- (int)countAssetsForTaskID:(unint64_t)d totalAssets:(unint64_t *)assets processedAssets:(unint64_t *)processedAssets
{
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
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
          v13 = 1024;
          v14 = 3393;
          v15 = 2080;
          v16 = "[VCPDatabaseWriter(BackgroundAnalysisProgressHistory) countAssetsForTaskID:totalAssets:processedAssets:]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
        }
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100050EFC;
      v10[3] = &unk_100283BD0;
      v10[4] = self;
      v10[5] = d;
      v10[6] = assets;
      v10[7] = processedAssets;
      [(VCPDatabaseWriter *)self executeDatabaseBlock:v10 fallbackBlock:0 write:0];
      return 0;
    }
  }

  return result;
}

- (int)parseHeader:(sqlite3_stmt *)header startColumn:(int)column analysis:(id)analysis
{
  analysisCopy = analysis;
  v8 = [NSNumber numberWithInt:sqlite3_column_int(header, column)];
  [analysisCopy setObject:v8 forKeyedSubscript:MediaAnalysisVersionKey];

  if (sqlite3_column_type(header, column + 1) == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(header, column + 1)];
  }

  [analysisCopy setObject:v9 forKeyedSubscript:MediaAnalysisDateModifiedKey];

  if (sqlite3_column_type(header, column + 2) == 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(header, column + 2)];
  }

  [analysisCopy setObject:v10 forKeyedSubscript:MediaAnalysisDateAnalyzedKey];

  v11 = [NSNumber numberWithLongLong:sqlite3_column_int64(header, column + 3)];
  v12 = MediaAnalysisAnalysisTypesKey;
  [analysisCopy setObject:v11 forKeyedSubscript:MediaAnalysisAnalysisTypesKey];

  v13 = [NSNumber numberWithInt:sqlite3_column_int(header, column + 4)];
  [analysisCopy setObject:v13 forKeyedSubscript:MediaAnalysisFlagsKey];

  v14 = [NSNumber numberWithLongLong:sqlite3_column_int64(header, column + 5)];
  [analysisCopy setObject:v14 forKeyedSubscript:MediaAnalysisStatsFlagsKey];

  if (sqlite3_column_double(header, column + 6) != MediaAnalysisQualityUnknown)
  {
    v15 = [NSNumber numberWithDouble:?];
    [analysisCopy setObject:v15 forKeyedSubscript:MediaAnalysisQualityKey];
  }

  if (sqlite3_column_type(header, column + 7) == 5)
  {
    v16 = 0;
  }

  else
  {
    v16 = [NSString stringWithUTF8String:sqlite3_column_text(header, column + 7)];
  }

  if (sqlite3_column_type(header, column + 8) == 5)
  {
    v17 = 0;
  }

  else
  {
    v17 = [NSString stringWithUTF8String:sqlite3_column_text(header, column + 8)];
  }

  v18 = [VCPFingerprint fingerprintWithMaster:v16 adjusted:v17];
  [analysisCopy vcp_setFingerprint:v18];

  vcp_version = [analysisCopy vcp_version];
  if (vcp_version < MediaAnalysisChangedVersion3 && ([analysisCopy vcp_types] & 4) != 0)
  {
    v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [analysisCopy vcp_types] | 8);
    [analysisCopy setObject:v20 forKeyedSubscript:v12];
  }

  return 0;
}

- (int)queryHeadersForAssets:(id)assets analyses:(id)analyses
{
  assetsCopy = assets;
  analysesCopy = analyses;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"queryHeadersForAssets:analyses:" replacedByMethodName:@"fetchAnalysesWithLocalIdentifiers:predicate:"];
    v8 = -50;
  }

  else
  {
    v8 = [(VCPDatabaseWriter *)self migration_queryHeadersForAssets:assetsCopy analyses:analysesCopy];
  }

  return v8;
}

- (int)migration_queryHeadersForAssets:(id)assets analyses:(id)analyses
{
  assetsCopy = assets;
  analysesCopy = analyses;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v17 = 1024;
    v18 = 3464;
    v19 = 2080;
    v20 = "[VCPDatabaseWriter(DataCollection) migration_queryHeadersForAssets:analyses:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if ([assetsCopy count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100051714;
    v11[3] = &unk_100283C70;
    v12 = assetsCopy;
    selfCopy = self;
    v14 = analysesCopy;
    v8 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v11 fallbackBlock:0 write:0];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v9 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "No local identifiers provided; return empty analyses", buf, 2u);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (int)loadAllKeyValuePairs:(id)pairs
{
  pairsCopy = pairs;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"loadAllKeyValuePairs:" replacedByMethodName:@"fetchAllDataStoreKeyValuePairs:"];
    v5 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v11 = 1024;
      v12 = 3516;
      v13 = 2080;
      v14 = "[VCPDatabaseWriter(DataCollection) loadAllKeyValuePairs:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100051C90;
    v7[3] = &unk_100283C98;
    v7[4] = self;
    v8 = pairsCopy;
    v5 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v7 fallbackBlock:0 write:0];
  }

  return v5;
}

- (BOOL)keyExistsInKeyValueStore:(id)store
{
  storeCopy = store;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"keyExistsInKeyValueStore:" replacedByMethodName:@"keyExistsInKeyValueStore:"];
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3550;
    *&buf[18] = 2080;
    *&buf[20] = "[VCPDatabaseWriter(DataCollection) keyExistsInKeyValueStore:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if (!storeCopy)
  {
    goto LABEL_8;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100052168;
  v7[3] = &unk_100283D08;
  v7[4] = self;
  v8 = storeCopy;
  v9 = buf;
  [(VCPDatabaseWriter *)self executeDatabaseBlock:v7 fallbackBlock:0 write:0];
  v5 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
LABEL_9:

  return v5 & 1;
}

- (int64_t)valueForKey:(id)key
{
  keyCopy = key;
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"valueForKey:" replacedByMethodName:@"dataStoreValueForKey:"];
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3585;
    *&buf[18] = 2080;
    *&buf[20] = "[VCPDatabaseWriter(DataCollection) valueForKey:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if (!keyCopy)
  {
    goto LABEL_8;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000525A4;
  v7[3] = &unk_100283F78;
  v7[4] = self;
  v9 = buf;
  v8 = keyCopy;
  [(VCPDatabaseWriter *)self executeDatabaseBlock:v7 fallbackBlock:0 write:0];
  v5 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
LABEL_9:

  return v5;
}

- (int64_t)backup_valueForKey:(id)key
{
  keyCopy = key;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3597;
    *&buf[18] = 2080;
    *&buf[20] = "[VCPDatabaseWriter(DataCollection) backup_valueForKey:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if (keyCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005277C;
    v7[3] = &unk_100283F78;
    v7[4] = self;
    v9 = buf;
    v8 = keyCopy;
    [(VCPDatabaseWriter *)self executeDatabaseBlock:v7 fallbackBlock:0 write:0];
    v5 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)setValue:(int64_t)value forKey:(id)key
{
  keyCopy = key;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"setValue:forKey:" replacedByMethodName:@"setDataStoreValue:forKey:"];
LABEL_8:
    v7 = -50;
    goto LABEL_9;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v14 = 1024;
    v15 = 3614;
    v16 = 2080;
    v17 = "[VCPDatabaseWriter(DataCollection) setValue:forKey:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if (!keyCopy)
  {
    goto LABEL_8;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005295C;
  v9[3] = &unk_100283CC0;
  v9[4] = self;
  valueCopy = value;
  v10 = keyCopy;
  v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:1];

LABEL_9:
  return v7;
}

- (int)removeKey:(id)key
{
  keyCopy = key;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"removeKey:" replacedByMethodName:@"removeDataStoreKey:"];
LABEL_8:
    v5 = -50;
    goto LABEL_9;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v11 = 1024;
    v12 = 3627;
    v13 = 2080;
    v14 = "[VCPDatabaseWriter(DataCollection) removeKey:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if (!keyCopy)
  {
    goto LABEL_8;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100052B24;
  v7[3] = &unk_100283C98;
  v7[4] = self;
  v8 = keyCopy;
  v5 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v7 fallbackBlock:0 write:1];

LABEL_9:
  return v5;
}

- (int)storeStatsFlags:(unint64_t)flags forLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"storeStatsFlags:forLocalIdentifier:" replacedByMethodName:0];
LABEL_8:
    v7 = -50;
    goto LABEL_9;
  }

  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v14 = 1024;
    v15 = 3640;
    v16 = 2080;
    v17 = "[VCPDatabaseWriter(DataCollection) storeStatsFlags:forLocalIdentifier:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  if (!identifierCopy)
  {
    goto LABEL_8;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100052CF4;
  v9[3] = &unk_100283CC0;
  v9[4] = self;
  flagsCopy = flags;
  v10 = identifierCopy;
  v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:1];

LABEL_9:
  return v7;
}

- (unint64_t)countOfAssetsWithMediaAnalysisResultsType:(unint64_t)type
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"countOfAssetsWithMediaAnalysisResultsType:" replacedByMethodName:@"fetchAnalysesWithLocalIdentifiers:predicate:resultTypes:"];
    return 0;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3664;
      *&buf[18] = 2080;
      *&buf[20] = "[VCPDatabaseWriter(DataCollection) countOfAssetsWithMediaAnalysisResultsType:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000530DC;
    v9[3] = &unk_100283D98;
    v9[5] = buf;
    v9[6] = type;
    v9[4] = self;
    v6 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:0];
    if (v6)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v7 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *v10 = 67109120;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Failed to query countOfAssetsWithMediaAnalysisResultsType - %d", v10, 8u);
        }
      }

      v5 = 0;
    }

    else
    {
      v5 = *(*&buf[8] + 24);
    }

    _Block_object_dispose(buf, 8);
  }

  return v5;
}

+ (id)databaseWithFilepath:(id)filepath
{
  filepathCopy = filepath;
  v4 = [objc_alloc(objc_opt_class()) initWithFilepath:filepathCopy];

  return v4;
}

- (int)migration_restoreAnalysis:(id)analysis forLocalIdentifier:(id)identifier
{
  analysisCopy = analysis;
  identifierCopy = identifier;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    v17 = 1024;
    v18 = 3703;
    v19 = 2080;
    v20 = "[VCPDatabaseWriter(BackupRestore) migration_restoreAnalysis:forLocalIdentifier:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005346C;
  v12[3] = &unk_100283C70;
  v12[4] = self;
  v8 = analysisCopy;
  v13 = v8;
  v9 = identifierCopy;
  v14 = v9;
  v10 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v12 fallbackBlock:&stru_100283F98 write:1];

  return v10;
}

- (int)flushWAL
{
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3712;
    *&buf[18] = 2080;
    *&buf[20] = "[VCPDatabaseWriter(BackupRestore) flushWAL]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  commit = [(VCPDatabaseWriter *)self commit];
  if (!commit)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100053614;
    v5[3] = &unk_100283FC0;
    v5[4] = self;
    v5[5] = buf;
    [(VCPDatabaseWriter *)self executeDatabaseBlock:v5 fallbackBlock:0 write:0];
    commit = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return commit;
}

- (unint64_t)backup_analysisRecordsModifiedSinceDate:(id)date
{
  dateCopy = date;
  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3725;
    *&buf[18] = 2080;
    *&buf[20] = "[VCPDatabaseWriter(BackupRestore) backup_analysisRecordsModifiedSinceDate:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100053818;
  v8[3] = &unk_100283D08;
  v8[4] = self;
  v5 = dateCopy;
  v9 = v5;
  v10 = buf;
  [(VCPDatabaseWriter *)self executeDatabaseBlock:v8 fallbackBlock:0 write:0];
  v6 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v6;
}

- (int)fetchMomentsScheduledAssetEntries:(id *)entries forTaskID:(unint64_t)d
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchMomentsScheduledAssetEntries:forTaskID:" replacedByMethodName:@"fetchMomentsScheduledAssetEntries:forTaskID:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 3761;
        v13 = 2080;
        v14 = "[VCPDatabaseWriter(MomentsScheduledAssets) fetchMomentsScheduledAssetEntries:forTaskID:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100053BB0;
    v8[3] = &unk_100283BF8;
    v8[4] = self;
    v8[5] = d;
    v8[6] = entries;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v8 fallbackBlock:0 write:0];
  }
}

- (int)fetchAllMomentsScheduledAssets:(id *)assets
{
  if (_os_feature_enabled_impl())
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"fetchAllMomentsScheduledAssets:" replacedByMethodName:@"fetchAllMomentsScheduledAssets:"];
    return -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v8 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v9 = 1024;
        v10 = 3801;
        v11 = 2080;
        v12 = "[VCPDatabaseWriter(MomentsScheduledAssets) fetchAllMomentsScheduledAssets:]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
      }
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100054078;
    v6[3] = &unk_100283C20;
    v6[4] = self;
    v6[5] = assets;
    return [(VCPDatabaseWriter *)self executeDatabaseBlock:v6 fallbackBlock:0 write:0];
  }
}

- (int)setMomentsScheduledAssetWithLocalIdentifier:(id)identifier taskID:(unint64_t)d andRequestDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"setMomentsScheduledAssetWithLocalIdentifier:taskID:andRequestDate:" replacedByMethodName:@"setMomentsScheduledAssetWithLocalIdentifier:taskID:requestDate:"];
    selfCopy = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v22 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v23 = 1024;
      v24 = 3847;
      v25 = 2080;
      v26 = "[VCPDatabaseWriter(MomentsScheduledAssets) setMomentsScheduledAssetWithLocalIdentifier:taskID:andRequestDate:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000545A4;
    v16 = &unk_100283FE8;
    selfCopy = self;
    dCopy = d;
    v18 = identifierCopy;
    v19 = dateCopy;
    v11 = objc_retainBlock(&v13);
    selfCopy = [(VCPDatabaseWriter *)self executeDatabaseBlock:v11 fallbackBlock:v11 write:1, v13, v14, v15, v16, selfCopy];
  }

  return selfCopy;
}

- (int)removeMomentsScheduledAssetWithLocalIdentifier:(id)identifier andTaskID:(unint64_t)d
{
  identifierCopy = identifier;
  if ([objc_opt_class() runtimeAssertEnabledForDatabaseWriter])
  {
    [objc_opt_class() deprecatedExceptionForMethodName:@"removeMomentsScheduledAssetWithLocalIdentifier:andTaskID:" replacedByMethodName:@"removeMomentsScheduledAssetWithLocalIdentifier:taskID:"];
    v7 = -50;
  }

  else
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v14 = 1024;
      v15 = 3873;
      v16 = 2080;
      v17 = "[VCPDatabaseWriter(MomentsScheduledAssets) removeMomentsScheduledAssetWithLocalIdentifier:andTaskID:]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Executing: %s[line:%d]: %s", buf, 0x1Cu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100054968;
    v9[3] = &unk_100283CC0;
    v9[4] = self;
    dCopy = d;
    v10 = identifierCopy;
    v7 = [(VCPDatabaseWriter *)self executeDatabaseBlock:v9 fallbackBlock:0 write:1];
  }

  return v7;
}

@end